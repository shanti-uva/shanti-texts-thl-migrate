<?php
$sql = "select min(r.nid) as 'min', max(r.nid) as 'max' from node_revision r, node n where n.nid = r.nid and n.type = 'book' and timestamp > 1419279898";
$rs = db_query($sql );
$r = (object)$rs->fetchAssoc();
for ($nid = $r->min; $nid <= $r->max; $nid++) {
  print "$nid ... ";
  node_delete($nid);
  print "deleted.\n";
}
?>