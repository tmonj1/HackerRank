use strict;
use warnings;
use utf8;

#
# subroutines
#

# extract HTML tags from an HTML text
sub extract_link_and_names{
  my $text = $_[0];

  # get all link and name pairs
  while (my $w = $text =~ /<a [^>]*href="([^"]+)"[^>]*>(<[^>]+>)?\s*([^<>]*[^\s]|)\s*(<\/\w+>)?<\/a>/g) {
    print "$1,$3\n";
  }
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

# extract tags
extract_link_and_names($fulltext);