#!/usr/bin/env perl6

use v6;

sub stuff( *@arg ) {
    say "These are my arguments ", @arg.join: "|"
}

say stuff( | { key => 3 } );
