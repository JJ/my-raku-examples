#!/usr/bin/env perl6

use v6;

my regex key {^^ <![#-]> \d+ }
say "333" ~~ &key;                         
say "#333" ~~ &key;

say '333$' ~~ m/ \d+ <?[$]>/;
say '333' ~~ m/ \d+ <?[$]>/;
say '$333' ~~ m/^^ <?[$]> . \d+ /;
say '333' ~~ m/^^ <?[\d]> \d+ /;
say '333' ~~ m/^^ <?alnum> \d+ /;
say '333' ~~ m/^^ <?:Nd> \d+ /;
say '333' ~~ m/^^ <!:L> \d+ /;
say '333' ~~ m/^^ \d+ <!:Script<Tamil>> /
