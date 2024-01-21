use strict;
use warnings;
use utf8;

#
# subroutines
#

# extract HTML tags from an HTML text
sub split_phone_number{
  my $text = $_[0];

  # get all link and name pairs
  $text =~ /^(\d{1,3})[ -](\d{1,3})[ -](\d{4,10})$/l;
  print "CountryCode=$1,LocalAreaCode=$2,Number=$3\n";
}

# count lines
my $count=<stdin>;

# process each line
my $line;
while ($count > 0) {
  $line=<stdin>;
  split_phone_number($line);
  $count--;
}

