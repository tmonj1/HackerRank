use strict;
use warnings;
use utf8;

sub check_username{
  my $text = $_[0];

  if ($text =~ /^[_.]\d+[a-zA-Z]*_?$/) {
    print "VALID\n"
  } 
  else {
    print "INVALID\n"
  }
}

# count lines
my $count=<stdin>;

# put all lines of text into $fulltext
my $fulltext = '';
my $line;
while ($count > 0) {
  $line=<stdin>;
  check_username($line);
  $count--;
}

