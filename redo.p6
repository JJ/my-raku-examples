#!/usr/bin/env perl6

use v6;

my $i;
A: do {
    $i++;
    redo A until $i == 5;
    $i-- };
say $i;
