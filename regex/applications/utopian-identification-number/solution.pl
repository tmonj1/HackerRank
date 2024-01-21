use strict;
use warnings;
use utf8;

sub check_username{
  my $text = $_[0];

  if ($text =~ /^[a-z]{0,3}\d{2,8}[A-Z]{3,}/) {
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

