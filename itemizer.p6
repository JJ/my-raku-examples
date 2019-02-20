#!/usr/bin/env perl6

use v6;

my @arr;
my ($a, $b) = (1,1);
for ^5 {
    ($a,$b) = ($b, $a+$b);
    @arr.push: ($a.item, $b.item);
    say @arr
};
say @arr;
