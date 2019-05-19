#!/usr/bin/env perl6

use v6;

sub zipi( --> Array ) { return [1,2] but 42 };

my @zope := zipi;

say @zope.^name;
