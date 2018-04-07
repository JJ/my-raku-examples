#!/usr/bin/env perl6

use v6;

my $a = sub ($) { $_ * 2 };
my $b = sub ($) { $_ / 2 };

my @funcs = ($a, $b);

my @ops = @funcs.roll(4);

say  @ops X∘ ^10; 

