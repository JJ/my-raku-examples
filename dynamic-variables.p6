#!/usr/bin/env perl6

use v6;

say $*PERL.gist;
say $*PERL.Str;

my $*FOO = [ 1,2,3];
say $*FOO;
say $*FOO.dynamic;
