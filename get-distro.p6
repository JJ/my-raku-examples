#!/usr/bin/env perl6

use v6;

class Depends {
    has $!is-win = $*DISTRO.is-win;

    
    multi method what( $self where .is-win: ) { return "Win" }
    multi method what( $self: ) { return "Non-win" }
}

my $object = Depends.new();

say $object.what;
