#!/usr/bin/env perl6

use v6;

my $Logger = -> $event, $key = Nil  {
    state %store;
    if ( $event ) {
        %store{ DateTime.new( now ) } = $event;
    } else {
        %store{ %store.keys.grep( /$key/ ) }
    }
}

my $Logger::logs = $Logger.assuming( *, Nil );
my $Logger::get = $Logger.assuming( Nil, * );

$Logger::logs( <an array> );
$Logger::logs( %(key => 42 ) );

say $Logger::get( "2018-05-28");

