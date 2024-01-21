use strict;
use warnings;
use utf8;

sub check_match_position{
  my $text = $_[0];

  if ($text =~ /^hackerrank$/) {
    print "0\n"
  } 
  elsif ($text =~ /^hackerrank/) {
    print "1\n"
  }
  elsif ($text =~ /hackerrank$/) {
    print "2\n"
  }
  else {
    print "-1\n"
  }
}

# count lines
my $count=<stdin>;

# put all lines of text into $fulltext
my $fulltext = '';
my $line;
while ($count > 0) {
  $line=<stdin>;
  check_match_position($line);
  $count--;
}

