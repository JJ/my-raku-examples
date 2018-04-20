#!/usr/bin/env perl6

use v6;

my @seq = 1000000,2000000 … ∞;

my $i = 0;
repeat {
    say $i," → ", (1…@seq[$i]).is-lazy;
    $i++;
} until (1…@seq[$i]).is-lazy;
