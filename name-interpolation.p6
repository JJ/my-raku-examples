#!/usr/bin/env perl6

use v6;

my %Hamadryas = map { slip $_, 0 }, <
    februa
    honorina
    velutina
    >;

{
my $pair = :%Hamadryas;
say $pair;   # Hamadryas => { ... }
}

put '-' x 50;
