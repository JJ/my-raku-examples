#!/usr/bin/env perl6

use v6;

my $logger = -> $event, $key = Nil  {
    state %store;
    if ( $event ) {
        %store{ DateTime.new( now ) } = $event;
    } else {
        %store.keys.grep( /$key/ )
    }
}

$logger( "Stuff" );
$logger( "More stuff");

say $logger( Nil, "2018-05-28");

