#!/usr/bin/env perl6

use v6;

sub divisible-by( Int $n --> Array(Seq) ) {
    gather {
        for <2 3 5 7> {
            take $_ if $n %% $_;
        }
    }
}

say (3..13).categorize( &divisible-by );
