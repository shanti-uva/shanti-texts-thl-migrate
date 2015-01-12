<?php
$min = $argv[1];
$max = $argv[2];
print "Deleting nodes from $min to $max ...\n";
for ($nid = $min; $nid <= $max; $nid++) {
  print $nid;
  node_delete($nid);
  print " deleted.\n";
}
?>