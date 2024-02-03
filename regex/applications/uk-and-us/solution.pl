use strict;
use warnings;
use utf8;

sub count_us_words{
  my $text = $_[0];
  my $word = $_[1];

  $word =~ s/\n//g;
  
  $word =~ s/\b(\w+)ze\b/$1(ze|se)/;
  my $regex = qr/$word/;
  my @matches = $text =~ /$regex/g;
  my $count = scalar(@matches);
  print "$count\n";
}

# count statement lines
my $count = <stdin>;

# put all lines of text into $fulltext
my $fulltext = '';
my $line;
while ($count > 0) {
  $line = <stdin>;
  $fulltext = $fulltext . $line;
  $count--;
}

# count occurances of each word one by one
my $word;
$count = <stdin>;
while ($count > 0) {
  $word = <stdin>;
  count_us_words($fulltext, $word);
  $count--;
}

