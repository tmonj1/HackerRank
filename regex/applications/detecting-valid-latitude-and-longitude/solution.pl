use strict;
use warnings;
use utf8;

sub check_latitude_and_longitude{
  my $text = $_[0];

  if ($text =~ /^\([+-]?((\d|[1-8]\d)(\.\d+)?|90(\.0+)?), [+-]?((\d|[1-9]\d|1[0-7]\d)(\.\d+)?|180(\.0+)?)\)$/) { 
    print "Valid\n"
  } 
  else {
    print "Invalid\n"
  }
}

# count lines
my $count=<stdin>;

# put all lines of text into $fulltext
my $line;
while ($count > 0) {
  $line=<stdin>;
  check_latitude_and_longitude($line);
  $count--;
}

