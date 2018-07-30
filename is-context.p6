#!/usr/bin/env perl6

use v6;

my $x is context = 5;
mySubroutine(7);

sub mySubroutine($x) {
   say $x;         # 7
   say $CALLER::x; # 5
}
