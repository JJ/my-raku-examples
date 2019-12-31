#!/usr/bin/env raku

my %clashed = :1a, :2b;

sub clashed( %foo ) {
    return 42;
}

say clashed( %(:3d,:4e) );
