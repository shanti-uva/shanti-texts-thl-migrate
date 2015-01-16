<?php

$min = 66643;
$max = 67039;
print "Deleting nodes from $min to $max ...\n";
for ($nid = $min; $nid <= $max; $nid++) {
  print $nid;
  node_delete($nid);
  print " deleted.\n";
}
?>