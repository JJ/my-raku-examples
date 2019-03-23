#!/usr/bin/env perl6

use v6;

my @args = <-a -e -b -v>;
my $verbose-selected = any(@args) eq '-v' | '-V';
say $verbose-selected.^name;
say $verbose-selected;
say !$verbose-selected;
if $verbose-selected.so {
    say "Verbose option detected in arguments";
} # OUTPUT: «Verbose option detected in arguments␤»
