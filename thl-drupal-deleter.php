<?php

$min = 65956;
$max = 66642;
print "Deleting nodes from $min to $max ...\n";
for ($nid = $min; $nid <= $max; $nid++) {
  print $nid;
  node_delete($nid);
  print " deleted.\n";
}
?>