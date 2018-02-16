#!/usr/bin/env perl6

use v6;

my $sig = :(Int $i, Str $s);
say (10, 'answer') ~~ $sig;
my $ßub = sub ( Str $ß, Int $þ ) { return $ß xx $þ };
say $ßub.signature ~~ :( Str, Int );
# OUTPUT: «True␤»
given $sig {
    when $ßub.signature { say 'mismatch' }
    when :($, $)        { say 'match' }
    default             { say 'no match' }
}
# OUTPUT: «match␤»
