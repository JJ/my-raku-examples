#!/usr/bin/env perl6

use v6;

my $zipi;

sub f(--> 33 ) {
    $zipi = <a b c>.map: {44}
};

say f;
say $zipi
