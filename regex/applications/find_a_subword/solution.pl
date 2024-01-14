use strict;
use warnings;
use utf8;

#
# subroutines
#

# count subword in text
sub count_subword{
  my $text = $_[0];
  my $subword = $_[1];

  # count subword
  my $count = () = $text =~ /(?<=[A-Za-z0-9_])$subword(?=[A-Za-z0-9_])/g;
  
  # output
  print "$count\n";
}

# get the number of sentences
my $n=<stdin>;

# put all sentences of text into $fulltext
my $fulltext = '';
my $line;
while ($n > 0) {
  $line=<stdin>;
  $fulltext = $fulltext . $line;
  $n--;
}

# get the number of queries 
my $q=<stdin>;

# count subword for each query
my $subword;
while ($q > 0) {
  $subword=<stdin>;
  chomp($subword);  # remove tailing \n
  count_subword($fulltext, $subword);
  $q--;
}