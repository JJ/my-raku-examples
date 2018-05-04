#!/usr/bin/env perl6

use v6;

my $b = (1,2,1).Bag;
say $b.^name;

my %haШ = (1,2,1).Bag;
say  %haШ.^name;

my %real-haШ := (1,2,1).Bag;
say %real-haШ.^name;
