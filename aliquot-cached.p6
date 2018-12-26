#!/usr/bin/env perl6

use v6;

use experimental :cached;

sub aliquot-parts( $number ) is cached {
    (^$number).grep: $number %% *; 
}

sub infix:<amic>( $m, $n ) {
    $m == aliquot-parts($n).sum &&
    $n == aliquot-parts($m).sum;
}

# Taken from https://en.wikipedia.org/wiki/Amicable_numbers
my @numbers = [2620, 2924, 5020, 5564, 6232, 6368, 66928, 66992];

say "Aliquot parts of $_ are ", aliquot-parts $_ for @numbers;

for @numbers X @numbers -> @pair {
    say "@pair[0] and @pair[1] are ", @pair[0] amic @pair[1]??" "!!"not ", "amicable";
}
                                                                             
