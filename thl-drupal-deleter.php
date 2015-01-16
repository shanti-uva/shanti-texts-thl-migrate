<?php
$min = 67040;
$max = 68917;
print "Deleting nodes from $min to $max ...\n";
for ($nid = $min; $nid <= $max; $nid++) {
  print $nid;
  node_delete($nid);
  print " deleted.\n";
}
?>