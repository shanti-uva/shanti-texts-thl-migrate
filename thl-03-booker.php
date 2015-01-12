<?php

include("ganon.php");

// Where to get and put files
$srcdir = '02-raw-json-decoded';
$outdir = '03-books-json';
$fmask  = $argv[1];

// A list of CSS selectors for elements to remove from the essay content
$elements_to_lose = array(
  'table.navarrows',
  '#chap-id', 
  '#chapRefWindow',
  'p.view-essay-in-publication',
  '#essay-head2',
  '.copyright',
  '.author',
  '.biblref',
  '.chap-id',
  '.chapter',
  '.description-title',
  '.by',
  '.content_by',
  '.last_updated',
  '#_mcePaste',
);

// Grab files from source dir and loop
exec("ls $srcdir/$fmask",$dirlist);
foreach ($dirlist as $line) {
  preg_match("/(.+)\/((.+)-(.+)\.json)/", $line, $matches);
  $dir      = $matches[1];
  $filename = $matches[2];
  $domain   = $matches[3];
  $kid      = $matches[4];
  $doc = json_decode(file_get_contents($line));
  $desc_n = -1;
  foreach ($doc->descriptions as $desc) {
    $desc_n++;
    print "$domain-$kid-$desc_n\n";    
    $book = array();
    $title = trim($desc->title); // Need to trap missing titles
    if (!title) {
      $kmap_info = json_encode("01-raw-json-info/$domain-$kid-info.json");
      $title = $kmap_info->feature->header;
    }
    $book['meta']['domain']               = $domain;
    $book['meta']['kid']                  = $kid;
    $book['meta']['authors']              = $desc->authors;
    $book['meta']['title']                = $title;
    $book['meta']['dates']['created_at']  = $desc->created_at;
    $book['meta']['dates']['updated_at']  = $desc->updated_at;  
    $book['nodes'] = extract_nodes($desc->content); 
    $book['nodes'][0]['title'] = $book['meta']['title']; 
    file_put_contents("$outdir/$domain-$kid-$desc_n.json",json_encode($book, JSON_UNESCAPED_UNICODE + JSON_UNESCAPED_SLASHES));
  }
}

function extract_nodes($body) {
  
  # Create an XML tree
  $dom = str_get_dom($body);

  # Prune the tree
  global $elements_to_lose;
  foreach ($elements_to_lose as $loser) {
    foreach ($dom($loser) as $el) {
      $el->delete();
    }
  }

  # Get the indent level at which to chop the tree
  $els = $dom('*');
  $indent = 0; if ($els[0]->getTag() == 'div') $indent = 1;
  
  # Chop the tree into pages
  $pages = array();
  $page_index = 0;
  $pages[$page_index]['index'] = 0;
  $pages[$page_index]['parent_index'] = -1;
  $page_level = array();
  foreach ($els as $el) {
  
    # Only process elements at the right level
    if ($el->indent() != $indent) continue;

    # Only process real elements (e.g. skip ~text~)
    $tag = $el->getTag();
    if (preg_match("/~/",$tag)) continue;
  
    # Process the element, treating headers 
    $class = $el->attributes['class'];
    $index = $el->index();
    if (preg_match("/^h(\d)/",$tag,$matches)) {
      $page_index++;
      $level = $matches[1]; if (preg_match("/h1/",$class)) $level = 1;
      $page_level[$level] = $page_index;
      $parent = $page_level[$level - 1]; if (!$parent) $parent = 0;
      $title = trim(html_entity_decode($el->getPlainText(), ENT_COMPAT, 'UTF-8'));
      $pages[$page_index]['title']        = $title;
      $pages[$page_index]['index']        = $page_index;
      $pages[$page_index]['parent_index'] = $parent;
    }
    else {
      $content = clean_content($el->html());
      $pages[$page_index]['body'] .= $content;
    }
  }
    
  # Handle unwrapped content
  if ($first == '~text~') {
    $content = clean_content($el->html());
    $pages[$page_index]['body'] .= preg_replace("/~root~/", "div", $content);  
  }
  
  # Handle case of no title?
  if (!isset($pages[$page_index]['title']) || !$pages[$page_index]['title']) {
    print "$page_index -- NO TITLE\n";
    // Use meta title ... but not yet set ... Actually, this is caught in the importer
  }
   
  # Maybe this will prevent the script for causing a core dump
  unset($dom);
  
  return $pages;
}

function clean_content($content) {
  $content = preg_replace("/(\\t|\\n)+/m", " ", $content);
  $content = html_entity_decode($content, ENT_COMPAT, 'UTF-8');
  return $content;
}

function print_els($els) {
  foreach ($els as $el) {
    print "TAG:       " . $el->getTag() . "\n";
    if (count($el->attributes))  {
      print "ATTS:      ";
      foreach($el->attributes as $attribute => $value) {
        echo $attribute, ': ', $value, "; "; 
      }
      print "\n";
    }
    print "INDEX:     " . $el->index() . " \n";
    print "INDENT:    " . $el->indent() . "\n";
    print "LOCATION:  " . $el->dumpLocation() . "\n";
    print "CONTENT:   " . substr($el->html(),0,60) . "\n";
    print "------------------------------------------------------------------\n";
  }
}

?>