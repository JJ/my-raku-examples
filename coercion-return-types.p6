#!/usr/bin/env perl6

use v6;

sub are-equal (Int $x, Int $y --> Bool(Int) ) {
    $x - $y
}

for (2,4,6) X (1,2,3) -> ($a,$b) {
    say "Are $a and $b equal? ", are-equal($a, $b);
}
