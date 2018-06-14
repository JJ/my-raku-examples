#!/usr/bin/env perl6

use v6;

my $foo:bar = 3;
my $foo:bar<2> = 2;
my $foo:bar<baz> = 'quux';

say $foo:bar;
say $foo:bar<2>;
my $foo:bur;
say $foo:bur.keys;
say $foo:bar.kv;

say MY::.keys;

