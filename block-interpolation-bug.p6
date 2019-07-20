#!/usr/bin/env perl6

use v6;

my $zipi;

class Zape {
    method Int { 44 }
};

sub f(--> Int ) {
    $zipi = "{Zape.new}";
};

say f;
say $zipi
