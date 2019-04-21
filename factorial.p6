#!/usr/bin/env perl6

use v6;

proto sub fact( Int ) {*}
multi sub fact( 1 --> 1 ) {}
multi sub fact( $x ) { take $x * fact( $x-1 ) }

my @factors = gather say fact(13) ;
say @factors;
