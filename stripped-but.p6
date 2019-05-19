#!/usr/bin/env perl6

use v6;

sub zipi( --> Str ) { return "Zape" but 42 };

my $zope = zipi;

say $zope.^name;
