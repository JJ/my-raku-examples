#!/usr/bin/env perl6

use v6;

my @multiples-of-five = 0,5,10 … 500;

my $odd-iterator = @multiples-of-five.iterator;

my $odd;
repeat {
    $odd-iterator.skip-one;
    $odd = $odd-iterator.pull-one;
    say "→ $odd";
} until $odd.Str eq IterationEnd.Str;
