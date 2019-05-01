#!/usr/bin/env perl6

use v6;

role doc { has $.doc is rw }

multi trait_mod:<is>(Variable $a, :$docced!) {
    $a does doc.new(doc => $docced);
}

my $dog is docced('barks');
say $dog.VAR;
