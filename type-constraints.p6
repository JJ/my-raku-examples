#!/usr/bin/env perl6

use v6;

subset Three-letter of Str where .chars == 3;

my Three-letter $acronym = "ZZQ";

subset Positive-integer of Int where * > 0;

sub divisors(Positive-integer $n) { $_ if $n %% $_ for 1..$n };
divisors 2.5;
