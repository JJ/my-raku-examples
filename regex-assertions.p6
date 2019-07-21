#!/usr/bin/env perl6

use v6;

my regex key {^^ <![#-]> \d+ }
say "333" ~~ &key;                         # OUTPUT: «True␤»
say "#333" ~~ &key;

say '333$' ~~ m/ \d+ <?[$]>/;
say '333' ~~ m/ \d+ <?[$]>/;
say '$333' ~~ m/<?[$]> \d+ /;
