#!/usr/bin/env perl6

use v6;

my @list = [ (1,2,3),
             (1,2,),
             [<a b c>,<d e f>],
             [[1]] ];

for @list -> @element {
  say "{@element} → {@element.^name}";
    for @element -> $sub-element {
      say $sub-element;
    }
}
