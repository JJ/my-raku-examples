#!/usr/bin/env raku

my @imported = ['$bar'];

require "foo.p6" @imported;
say $bar;
