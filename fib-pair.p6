#!/usr/bin/env perl6

use v6;

proto sub fib( Int ) {*}
multi sub fib( 0 --> 0 ) {}
multi sub fib( 1 --> 1 ) {}
multi sub fib( $x ) { take fib( $x-1 ) + fib( $x -2 ) }

my @pairs = gather say fib(13) ;
say @pairs;
