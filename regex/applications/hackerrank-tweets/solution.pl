use strict;
use warnings;
use utf8;

sub count_hackerrank{
  my $text = $_[0];

  my @matches = $text =~ /[Hh][Aa][Cc][Kk][Ee][Rr][Rr][Aa][Nn][Kk]/g;
  my $count = scalar(@matches);
  print "$count\n";
}

# count lines
my $count=<stdin>;

# put all lines of text into $fulltext
my $fulltext = '';
my $line;
while ($count > 0) {
  $line=<stdin>;
  $fulltext = $fulltext . $line;
  $count--;
}

count_hackerrank($fulltext);