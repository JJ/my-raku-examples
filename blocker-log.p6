#!/usr/bin/env perl6

use v6;

my $logger = -> $event, $key = Nil  {
    state %store;
    if ( $event ) {
        %store{ DateTime.new( now ) } = $event;
    } else {
        %store{ %store.keys.grep( /$key/ ) }
    }
}

$logger( "Stuff" );
$logger( "More stuff");

say $logger( Nil, "2018-05-28");

my $clogger = $logger.clone;
$clogger( "Clone stuff" );
$clogger( "More clone stuff");

say $clogger( Nil, "2018-05-28");

my $gets-logs = $logger.assuming( Nil, * );
$logger( %(changing => "Logs") );
say $gets-logs( "2018-05-28" );
