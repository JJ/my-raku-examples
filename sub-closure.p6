#!/usr/bin/env perl6

use v6;

sub can-be-seener( $whatever ) {
    my sub can-be-seen ( $objection ) {
        return $whatever but $objection;
    }
    return &can-be-seen
}

my $objectioner = can-be-seener( "Really?");
say $objectioner(42).Int;
