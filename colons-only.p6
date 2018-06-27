#!/usr/bin/env perl6

use v6;

my $foo:bar = 3;
my $foo:bar<2> = 2;
my $foo:bar<baz> = 'quux';

say $foo:bar;
say $foo:bar<2>;
say $foo:bar.kv;
say $foo:bar['2'];
say $foo:bar«baz»;

say MY::.keys;

