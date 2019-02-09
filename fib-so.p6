#!/usr/bin/env perl6

use v6;

my $fib = -> Int $x  {
    if $x == 0 {
        0;
    } elsif $x == 1 {
        1;
    } else {
        $fib($x - 1) + $fib($x - 2);
    }
}

say $fib(13) ;
