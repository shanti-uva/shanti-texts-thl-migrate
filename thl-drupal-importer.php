This is a PHP script. I can add text here without worrying about escaping it.
<?php

$dir = '~/WORK/shanti-texts-thl-import/02-json-books';
exec("ls $dir/*.json", $filenames);

$kmap_fields = array();
$kmap_fields['subjects']  = 'field_kmap_term';
$kmap_fields['places']    = 'field_kmap_places';
foreach ($filenames as $filename) {
  echo $filename . "\n";
  $book = file_get_contents($filename);
  $book = json_decode($book);
  $kid = $book->meta->kid;
  $domain = $book->meta->domain;
  if (!$domain || !$kid) {
    print "Missing key for $filename: DOMAIN=$domain, KID=$kid\n";
    continue;
  }
  $key = "$domain-$kid";
  $RECORD = array(); // Keep track of book's ancestor and parents when creating children
  foreach ($book->nodes as $part) {
    
    $title    = $part->title;
    $index    = $part->index;
    $parent   = $part->parent_index;
    $body     = $part->body;
    $authors  = $part->authors; # This is an array
    $date     = $part->dates[0]; # This may not be correct
    
    $node = new stdClass(); // We create a new node object
    $node->type = 'book';
    node_object_prepare($node); // Set some default values.
    
    $node->title = $title;
    $node->language = LANGUAGE_NONE; // But this should be changed, right?
    $node->field_book_content[$node->language][0]['value'] = $body;
    $node->field_book_content[$node->language][0]['format'] = 'ckeditor_full';
    if ($parent == -1) {
      if ($authors) {
        foreach ($authors as $author) {
          $node->field_book_author[$node->language][0]['value'] = $author;
        }
      }
      $date = preg_replace("/(\w+) (\d+), (\d+)/","$2 $1 $3",$date); 
      if ($date) { // Not really good enough
        $node->field_book_date[$node->language][0]['value'] = strtotime($date); # M dd, YY
        preg_match("/(\d{4})/",$date,$matches);
        $year = $matches[1] . "-01-01 00:00:00";
        if ($year) $node->field_dc_date_publication_year[$node->language][0]['value'] = $year;
      }
      # Get KMap Info
      $kmap_json = file_get_contents("http://$domain.kmaps.virginia.edu/features/$kid.json");
      if ($kmap_json === FALSE) {
        print "$key $index has no KMap info.\n";
      } 
      else {
        $kmap = json_decode($kmap_json); 
        $kmap_header = $kmap->feature->header;
        $kmap_ancestors = array();
        if ($domain == 'places') {
          foreach ($kmap->feature->perspectives[0]->ancestors as $ancestor) {
            $kmap_ancestors[] = '{{'.$ancestor->header.'}}';
          }
        } else {
          foreach ($kmap->feature->ancestors as $ancestor) {
            $kmap_ancestors[] = '{{'.$ancestor->header.'}}';
          }      
        }
        $kmap_ancestors_str = implode('',$kmap_ancestors);
        $kmap_field = $kmap_fields[$domain];
        $node->{$kmap_field}[$node->language][0]['id']      = $kid;
        $node->{$kmap_field}[$node->language][0]['raw']     = 'NOT USED';
        $node->{$kmap_field}[$node->language][0]['header']  = $kmap_header;
        $node->{$kmap_field}[$node->language][0]['domain']  = $domain;
        $node->{$kmap_field}[$node->language][0]['path']    = $kmap_ancestors_str;
      }
      $node->book['bid']  = 'new';
      $node->book['plid'] = 0;
    } 
    else {
      $node->book['bid']  = $RECORD[0]['nid'];
      $node->book['plid'] = $RECORD[$parent]['mlid'];
    }    
    
    $node->field_admin_status[$node->language][0]['value'] = 'thl-import'; # Used for selecting nodes to delete

    node_save($node);
    $RECORD[$index]['nid']  = $node->nid;
    $RECORD[$index]['mlid'] = $node->book['mlid'];
  }

}

?>