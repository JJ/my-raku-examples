#!/usr/bin/env perl6

use v6;

my @divisors = (gather {
        for <2 3 5 7> {
            take $_ if 70 %% $_;
        }
});
say @divisors;

