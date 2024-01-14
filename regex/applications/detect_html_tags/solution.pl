use strict;
use warnings;
use utf8;

#
# subroutines
#

# extract HTML tags from an HTML text
sub extract_tags{
  my $text = $_[0];

  # get all tags
  my @words = $text =~ /<\s*([A-Za-z][A-Za-z0-9]*)\s*(?:\s+[^<>]+)*>/g;
  
  # remove dupes
  my %unique_words;
  @unique_words{@words} = 1;
  
  # sort tags
  my @tag_list=sort {$a cmp $b} (keys %unique_words);
  
  # join with ";"
  my $tags = join(';', @tag_list);
  
  # output
  print "$tags";
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
extract_tags($fulltext);