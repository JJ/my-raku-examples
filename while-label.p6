#!/usr/bin/env perl6

use v6;

my $x = 0;
my $y = 0;
my $t = '';
A: while $x++ < 2 {
    $t ~= "A$x";
    B: while $y++ < 2 {
        $t ~= "B$y";
        redo A if $y++ == 1;
        last A
    }
}

say $t;
