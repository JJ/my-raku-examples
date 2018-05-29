#!/usr/bin/env perl6

use v6;

my &logger = -> $event  {
    state %store;
    if ( $event ) {
        %store{ DateTime.new( now ) } = $event;
    } else {
        %store;
    }
}

role Forable does Iterable {
    method iterator(&self:) {
        self( Nil );
    }
}


logger( "One" );
logger( "Two" );

&logger does Forable;

.say for &logger.iterator;
