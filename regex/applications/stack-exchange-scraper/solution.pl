use strict;
use warnings;
use utf8;

sub count_hackerrank{
  my $text = $_[0];

  #my @matches = $text =~ /<div class="summary">\s*<h3><a href="\/questions\/(\d+)\/[^>]+">([^<]+)<\/a><\/h3>(?:\s*<div.+?<\/div>){2}\s*<div.+?<div.+?<div.+?<span[^>]+>([^<]*)<\/span>/sg;
  while (my $match = $text =~ /<div class="summary">\s*<h3><a href="\/questions\/(\d+)\/[^>]+">([^<]+)<\/a><\/h3>(?:\s*<div.+?<\/div>){2}\s*<div.+?<div.+?<div.+?<span[^>]+>([^<]*)<\/span>/sg) {
    print "$1;$2;$3\n";
  }
}

# put all lines of text into $fulltext
my $fulltext = '';
while (<stdin>) {
  $fulltext = $fulltext . $_;
}

count_hackerrank($fulltext);