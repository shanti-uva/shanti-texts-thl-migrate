<?php
$node_list_file = '/tmp/nodes-to-delete.txt';
// May want to delete it and regenerate it here ...
# This file is generated by this query:
?>

This shows books that that have been imported by us:

SELECT entity_id 
FROM field_data_field_admin_status 
WHERE field_admin_status_value = 'thl-import'
INTO OUTFILE '/tmp/nodes-to-delete.txt';

This shows the total number of characters per book:

SELECT bid, SUM(CHAR_LENGTH(field_book_content_value)) 
FROM field_data_field_book_content f 
JOIN book b ON (b.nid = f.entity_id) 
GROUP BY bid 
INTO OUTFILE '/tmp/books-charsum.csv';


<?php
$list = file_get_contents($node_list_file);
$nodes = explode("\n", $list);
foreach ($nodes as $i => $nid) {
  node_delete($nid);
  print " $nid "; if (($i+1) % 10 == 0) print "\n";
} 
?>