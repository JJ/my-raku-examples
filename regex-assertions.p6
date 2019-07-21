#!/usr/bin/env perl6

use v6;

my regex key {^^ <![#-]> \d+ }
say "333" ~~ &key;                         # OUTPUT: «True␤»
say "#333" ~~ &key;

my regex keyed {<?[#-]> \d+ }
say "333" ~~ &keyed;                         # OUTPUT: «True␤»
say "#333" ~~ &keyed;
