#!/usr/bin/env perl6

use v6;

my @one-array = my $num = 3, 4, 5;
@one-array.say;
my @another-array;
@another-array = 3, $num = 4, 5;
@another-array.say;

my @array;
@array = $num = 42, "str";    # item assignment for $num: uses expression
say @array.perl;                 # OUTPUT: «[42, "str"]␤» (an Array)
say $num.perl;                   # OUTPUT: «42␤» (a Num)
