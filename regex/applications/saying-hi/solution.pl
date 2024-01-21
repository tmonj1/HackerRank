use strict;
use warnings;
use utf8;

sub print_saying_hi{
  my $text = $_[0];

  if ($text =~ /^[Hh][Ii] [^Dd]/) {
    print "$text"
  } 
}

# count lines
my $count=<stdin>;

# put all lines of text into $fulltext
my $fulltext = '';
my $line;
while ($count > 0) {
  $line=<stdin>;
  print_saying_hi($line);
  $count--;
}

