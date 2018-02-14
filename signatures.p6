#!/usr/bin/env perl6

use v6;

 my $sig = :(Int $i, Str $s);
 say (10, 'answer') ~~ $sig;
 # OUTPUT: «True␤»
 given $sig {
     when :(Int, Str) { say 'match' }
     when ('answer',10) { say 'mismatch' }
 }
 # OUTPUT: «match␤»
