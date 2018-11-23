#!/usr/bin/env perl6

use v6;

my @fib = 1,1, * + * … ∞;
my @lucas = 1,3, * + * … ∞;

my %sequences;
%sequences<f> := @fib;
%sequences<l> := @lucas;

for %sequences.keys -> $s {
    for ^10 -> $n {
        say %sequences{$s}[100+$n*10]/%sequences{$s}[101+$n*10];
    }
}
