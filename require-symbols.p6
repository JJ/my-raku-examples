#!/usr/bin/env raku

my @imported;
BEGIN {
    @imported = ['$bar'];
}
require "foo.p6" @imported;
say $bar;
