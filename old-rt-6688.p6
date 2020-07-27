#!/usr/bin/env raku

use Grammar::Tracer;
grammar Alnum1 {
    token TOP {<alnum> | <other> }
    token other { <alnum>.+ }
}

grammar Graph1 {
    token TOP {<graph> | <other> }
    token other { <graph>.+ }
}

grammar AlnumReversed {
  token TOP {<alnum>.+|<alnum>}
}
grammar Alpha1 {
  token TOP {<alpha>|<alpha>.+}
}
my $rx = rx/^ [<alnum>|<alnum>.*] $/;

my $str="n~";

say Alnum1.subparse( $str, rule => 'other' );

.say for "=========== <graph> ==============",
Graph1.parse($str),
"=========== <alnum> ==============",
Alnum1.parse($str),
"=========== <alnum> (reversed) ===",
AlnumReversed.parse($str),
"=========== <alpha> ==============",
Alpha1.parse($str),
"=========== Regex ==============",
$str ~~ $rx;
