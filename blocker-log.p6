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

role Forable does Iterable {
    method iterator() {
        say "self ", self;
        self.CALL-ME( Nil, "" );
    }
}

my $Logger::logs = $Logger.assuming( *, Nil );
my $Logger::get = $Logger.assuming( Nil, * );

$Logger::logs( <an array> );
$Logger::logs( %(key => 42 ) );

say $Logger::get( "2018-05-29");

my $typer = -> $thing { $thing.^name ~ ' → ' ~ $thing };

my $Logger::withtype = $Logger::logs ∘ $typer;

$Logger::withtype( Pair.new( 'left', 'right' ));
$Logger::withtype( ¾ );
say $Logger::get( "2018-05-29" );
$Logger::logs( "New one");
say $Logger( Nil, "" );

$Logger does Forable;

.say for $Logger;
