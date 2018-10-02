#!/usr/bin/env perl6

use v6;

my @array = (
    < 1 2 3 >,
    < 4 5 6 >,
    < 7 8 9 >
    );

say @array;       # [[1 2 3] [4 5 6] [7 8 9]]
say @array[1;1];  # 5

my @diagonal = gather {
    my @ends = ((0,0),(1,1),(2,2));
    for @ends -> @indices {
        take @array[ @indices[0] ][@indices[1]];
    };
}
say @diagonal;

my @just-three[3] = <alpha betta kappa>;
say @just-three.perl;
say @just-three.Array;
my @two-by-two = (4,3;2,1);
say @two-by-two.Array;

my @a[2;2] = (1,2; 3,4);
say @a.Array;
@a[1;1] = 42;
say @a.perl;

my @just-two[2] = <alpha betta kappa>;

