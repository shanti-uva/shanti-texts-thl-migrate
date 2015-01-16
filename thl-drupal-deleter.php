<?php

$min = 65461;
$max = 65955;
print "Deleting nodes from $min to $max ...\n";
for ($nid = $min; $nid <= $max; $nid++) {
  print $nid;
  node_delete($nid);
  print " deleted.\n";
}
?>