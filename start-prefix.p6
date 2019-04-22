#!/usr/bin/env perl6

use v6;

proto sub fact( Int ) {*}
multi sub fact( 1 --> 1 ) {}
multi sub fact( $x ) {  $x * fact( $x-1 ) }

my @promises = gather {
    for <3 4> {
        take start fact( 10 ** $_ );
    }
}

say await @promises;
