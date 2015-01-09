<?php

include("ganon.php");

// Where to get and put files
$srcdir = '01-raw-json';
$outdir = '03-books-json';

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
);


// Grab files from source dir and loop
exec("ls $srcdir/*.json",$dirlist);
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
    $book['meta']['authors']              = $desc->authors;
    $book['meta']['title']                = trim($desc->title);
    $book['meta']['dates']['created_at']  = $desc->created_at;
    $book['meta']['dates']['updated_at']  = $desc->updated_at;  
    $book['nodes'] = extract_nodes($desc->content, $domain, $kid); 
    $book['nodes'][0]['title'] = $book['meta']['title']; 
    file_put_contents("$outdir/$domain-$kid-$desc_n.json",json_encode($book, JSON_UNESCAPED_UNICODE + JSON_UNESCAPED_SLASHES));
  }
}

function extract_nodes($body, $domain, $kid) {
  
  # Create an XML tree
  $dom = str_get_dom($body);

  # Prune the tree
  global $elements_to_lose;
  foreach ($elements_to_lose as $loser) {
    foreach ($dom($loser) as $el) {
      $el->delete();
    }
  }

  # Figure out the structure of the HTML
  $first = $dom->firstChild();
  $els = array();
  if ($first == 'div') {
    if ($first->attributes['class'] == 'essay-body') {
      $els = $dom('div.essay-body > *');
    } else {
      $els = $dom('div:first-of-type > *');
    }
  } elseif ($first == '~text~') {
    # This is text without a root element, so don't try to grab els
    # Instead, handle separately below
  } elseif ($first == '~comment~') {
    # Do nothing
  } else {
    # Assume its just an element
    $els = $dom("$first:first-of-type, $first ~ *");
  }

  # Chop the book tree into pages
  $pages = array();
  $page_index = 0;
  $pages[$page_index]['index'] = 0;
  $pages[$page_index]['parent_index'] = -1;
  $page_level = array();
  foreach ($els as $el) {
    $tag = $el->getTag();
    if (preg_match("/h(\d)/",$tag,$matches)) {
      $page_index++;
      $level = $matches[1];
      $page_level[$level] = $page_index;
      $parent = $page_level[$level - 1]; if (!$parent) $parent = 0;
      $pages[$page_index]['title']        = trim(html_entity_decode($el->getPlainText()));
      $pages[$page_index]['index']        = $page_index;
      $pages[$page_index]['parent_index'] = $parent;
    }
    else {
      #$pages[$page_index]['body'] .= clean_content($el->html()); # No idea why this doesn't work!
      $pages[$page_index]['body'] .= $el->html();
    }
  }
  
  # Handle unwrapped content
  if ($first == '~text~') {
    $content = clean_content($dom->html());
    $pages[$page_index]['body'] .= preg_replace("/~root~/", "div", $content);  
  }
  
  return $pages;
}

function clean_content ($content) {
  $content = preg_replace("/(\\t|\\n)+/m", " ", $content);
  $content = preg_replace("/\s+/m", " ", $content);
  $content = html_entity_decode($content);
  return $content;
}

?>