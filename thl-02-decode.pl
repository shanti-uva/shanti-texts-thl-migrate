use strict;
use utf8;
use open ':encoding(utf8)';
use Encode qw/encode decode/;
use HTML::Entities;
use JSON;

my $indir  = '01-raw-json';
my $outdir = '02-raw-json-decoded';
my @infiles = `ls $indir/*.json`;
for my $path (@infiles) {

  chomp $path;
  my ($dir, $file) = split /\//, $path;
  print $file;

  my $infile = '';
  open IN, "$indir/$file";
  for my $line (<IN>) {
    $line =~ s/\\t+/ /g;
    $line =~ s/\\n+/ /g;
    $line =~ s/\s+/ /g;
    $infile .= $line;
  }
  close IN;
  
  my $tmp1 = from_json($infile);
  my $tmp2 = to_json($tmp1);

  open OUT, ">$outdir/$file";
  print OUT $tmp2;
  close OUT;

  print " done.\n";
  
}