Importing books into SHANTI Texts ...
<?php

/* 
Data Model for Book JSON:

meta
  authors = []
  title = ''
  dates
    created_at = ''
    updated_at = ''
nodes = []
  title = ''
  index = 0
  paren_index = 0
  body = ''
    
*/
$min_kid = 1853; # To allow skipping successful imports
$filemask = 'subjects-*.json'; 
$dir = '~/WORK/shanti-texts-thl-migrate/03-books-json';
print "Attempting to import files from $dir/$filemask ...\n";
exec("ls $dir/$filemask", $filenames);
$kmap_fields = array();
$kmap_fields['subjects']  = 'field_kmap_term';
$kmap_fields['places']    = 'field_kmap_places';
foreach ($filenames as $filename) {
  print $filename . "\n";
  $book = file_get_contents($filename);
  $book = json_decode($book);
  $kid = $book->meta->kid;
  $domain = $book->meta->domain;
  if (!$domain || !$kid) {
    print "Missing key for $filename: DOMAIN=$domain, KID=$kid\n";
    continue;
  }
  if ($kid < $min_kid) {
    print "Skipping ...\n";
    continue;
  }
  $key = "$domain-$kid";
  $RECORD = array(); // Keep track of book's ancestor and parents when creating children
  foreach ($book->nodes as $part) {
    
    $title    = $part->title;
    $index    = $part->index;
    $parent   = $part->parent_index;
    $body     = $part->body;
    #$authors  = $part->authors; # This is an array
    #$date     = $part->dates[0]; # This may not be correct
    
    # CREATE NODE, ADD TITLE AND CONTENT
    $node = new stdClass(); // We create a new node object
    $node->type = 'book';
    node_object_prepare($node); // Set some default values.
    $node->title = $title;
    $node->language = LANGUAGE_NONE; // But this should be changed, right?
    $node->field_book_content[$node->language][0]['value'] = $body;
    $node->field_book_content[$node->language][0]['format'] = 'ckeditor_full';
    
    # IF NO PARENT, CREATE A BOOK -- ACTUALLY, CREATE A 
    # BOOK BEFORE THIS AND JUST APPEND A NEW CHILD
    if ($parent == -1) {
    
      # AUTHORS
      $authors = $book->meta->authors;
      if ($authors) {
        $prev_author = ''; # Remove duplicates
        foreach ($authors as $author_inf) {
          if (is_object($author_inf)) {
            $author = $author_inf->fullname;
          if (is_array($author_inf)) {
            $author = $author_inf['fullname'];
          } else {
            $author = $author_inf;
          }
          if ($author != $prev_author) {
            $node->field_book_author[$node->language][0]['value'] = $author;
          }
          $prev_author = $author;
          print "TEST: $author\n";
        }
      }

      # DATE
      # Source date format example: 2009-05-21 12:04:11 UTC
      $date = $book->meta->dates->created_at;
      $date = preg_replace("/\s+UTC/",'',$date);
      if (preg_match("/(\d{4})-\d{2}-\d{2} \d{2}:\d{2}:\d{2}/", $date, $matches)) {
        $node->field_book_date[$node->language][0]['value'] = $date; 
        $year = $matches[1] . "-01-01 00:00:00";
        if ($year) $node->field_dc_date_publication_year[$node->language][0]['value'] = $year;
      }

      # KMAP
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

        # Use KMap info to fix empty book titles
        if (preg_match("/^\s*Essay\s*$/", $title)) {
          $node->title .= " on " . ucwords($kmap_header);
        } elseif (preg_match("/^\s*$/", $title)) {
          $node->title .= ucwords($kmap_header);
        }

      }

      # BOOK      
      $node->book['bid']  = 'new';
      $node->book['plid'] = 0;
    } 
    
    # IF CHILD, ADD TO BOOK
    else {
      $node->book['bid']  = $RECORD[0]['nid'];
      $node->book['plid'] = $RECORD[$parent]['mlid'];
    }    
    
    $node->field_admin_status[$node->language][0]['value'] = 'thl-import'; # Used for selecting nodes to delete

    node_save($node);
    $RECORD[$index]['nid']  = $node->nid;
    $RECORD[$index]['mlid'] = $node->book['mlid'];
    print "Created " . $node->nid . "\n";
  }

}

?>
All done.