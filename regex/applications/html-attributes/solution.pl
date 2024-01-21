#use strict;
use warnings;
use utf8;

sub print_tag_and_attributes{
  my ($refHash) = @_;
  foreach my $tag (sort keys %{$refHash}) {
    printf( "%s:", $tag );
    my $count = 0;
    foreach my $y (sort keys %{$refHash->{$tag}}) {
      if ($y ne "") {
        if ($count > 0) {
          printf( ",%s", $y );
        } else {
          printf( "%s", $y );
        }
        $count++;
      }
    }
    printf( "\n" );
  }
}

sub collect_and_print_tag_attributes{
  my $text = $_[0];

  # collect all tags and their attributes in a hash
  my %tag_attributes_map = ();
  while (my $matches = $text =~ /<([A-Za-z][A-Za-z0-9]*)\s*([^>]*)>/g) {
    my $tag = $1;
    $tag_attributes_map{$tag}{""} = "";
    my $attrs = $2;
    while (my $attr = $attrs =~ /([A-Za-z]+)(?:\s*=\s*['"][^'"]*['"])?/g) {
      $tag_attributes_map{$tag}{$1} = "";
    }
  }

  # print tags and their attributes in {tag}:{attribute1},{attribute2} format
  print_tag_and_attributes( \%tag_attributes_map );
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

# call the function
collect_and_print_tag_attributes($fulltext);