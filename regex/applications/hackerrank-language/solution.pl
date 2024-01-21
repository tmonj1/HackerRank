use strict;
use warnings;
use utf8;

sub check_language{
  my $text = $_[0];



  if ($text =~ /\b(C|CPP|JAVA|PYTHON|PERL|PHP|RUBY|CSHARP|HASKELL|CLOJURE|BASH|SCALA| ERLANG|CLISP|LUA|BRAINFUCK|JAVASCRIPT|GO|D|OCAML|R|PASCAL|SBCL|DART| GROOVY|OBJECTIVEC)\b/) {
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
  check_language($line);
  $count--;
}

