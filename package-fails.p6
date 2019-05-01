#!/usr/bin/env perl6

use v6;

sub Moves::shuffle( *@deck ) {
    return @deck.pick: *;
}


say Moves::shuffle( "As de bastos", "3 de oros", "Sota de espadas" );
