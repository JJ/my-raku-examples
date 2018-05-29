#!/usr/bin/env perl6

use v6;

my &Logger = -> $event, $key = Nil  {
    state %store;
    if ( $event ) {
        %store{ DateTime.new( now ) } = $event;
    } else {
        if $key ne "" {
            %store{ %store.keys.grep( /$key/ ) }
        } else {
            %store;
        }
    }
}

role Forable does Iterable {
    method iterator(&self:) {
        self( Nil, "" );
    }
}

my &Logger::logs = &Logger.assuming( *, Nil );
my &Logger::get = &Logger.assuming( Nil, * );

Logger::logs( <an array> );
&Logger::logs( %(key => 42 ) );

say &Logger::get( "2018-05-29");

my $typer = -> $thing { $thing.^name ~ ' → ' ~ $thing };

my &Logger::withtype = &Logger::logs ∘ $typer;

&Logger::withtype( Pair.new( 'left', 'right' ));
Logger::withtype( ¾ );
say Logger::get( "2018-05-29" );
Logger::logs( "New one");

&Logger does Forable;

.say for &Logger;
