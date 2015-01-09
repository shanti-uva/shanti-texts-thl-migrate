use strict;

# Pragmas
use strict;
no strict "refs";

# Libraries
use JSON;
use HTML::Entities;
use HTML::TreeBuilder::XPath;
use IO::HTML; 

# Where to get and put files
my $srcdir = '02-raw-json-decoded';
my $outdir = '03-books-json';

# Grab files from source dir and loop
my @files = `ls $srcdir/*.json`;
for my $file (@files) {

  # Get filename and extract metadata
  chomp $file;
  my ($dir, $filename) = split /\s+/, $file;
  my ($domain,$kid,$ext) = split /[-.]/, $filename;
  print "$file\n";

  # Get the JSON data and convert to Perl
  my $src = from_json($file); 
  print keys %$src, "\n";
  next;
=pod
  # Initialize data structure that will be converted to JSON
  my %book = ();
  $book{'meta'}{'kid'}    = $kid;
  $book{'meta'}{'domain'} = $domain;
  
  # Process file itself using XML magic
  my $tree = HTML::TreeBuilder::XPath->new;
  $tree->parse_file($body);
  
  # Get metadata -- title, authors, date, etc.
     
  $book{'meta'}{'description-title'} = &trim($book{'meta'}{'description-title'});
  
  ## Handle content (book nodes in a hiearchy)
  
  print "$domain-$kid\n";
 
  my @NODES = ();
  my $NODE_INDEX = 0;
  my %LEVELS = ();
  
  # Put in the top level book node
  $NODES[$NODE_INDEX]{'title'} = $book{'meta'}{'description-title'};
  $NODES[$NODE_INDEX]{'index'} = $NODE_INDEX;
  $NODES[$NODE_INDEX]{'parent_index'} = -1;
  
  # Now do the rest of the body
  for my $body ($tree->findnodes($bodypath)) {
    for my $item ($body->content_list()) {
      my $item_ref = ref $item;
      if ($item_ref eq 'HTML::Element' && $item->tag() =~ /^h(\d+)$/) {
        # It's a header element, so create a new node
        $NODE_INDEX++;
        my $level = $1;
        $LEVELS{$level} = $NODE_INDEX;
        my $parent = $LEVELS{($level - 1)}; $parent = 0 if (!$parent);
        $NODES[$NODE_INDEX]{'title'} = $item->as_trimmed_text();
        $NODES[$NODE_INDEX]{'index'} = $NODE_INDEX;
        $NODES[$NODE_INDEX]{'parent_index'} = $parent;
      } elsif ($item_ref eq 'HTML::Element') {
        # It's a content element, so add to current node
        $NODES[$NODE_INDEX]{'body'} .= $item->as_XML();        
      } else {
        # It's content too, but raw, so add to current node
        $NODES[$NODE_INDEX]{'body'} = $item;        
      }
    }
  }
  
  $book{'nodes'} = \@NODES;  

  $tree->delete;

  # Convert hash to JSON
  my $json = encode_json(\%book);
  open OUT, ">$outdir/$domain-$kid.json";
  binmode OUT, ":encoding(iso-8859-1)";
  print OUT $json;
  close OUT;
=cut
}

sub trim {
  my $str = shift;
  $str =~ s/^\s+|\s+$//g;
  return $str;
}


