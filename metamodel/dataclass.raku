#!/usr/bin/env raku

use lib ".";

use Dataclass;

dataclass Foo {
    has $.bar;
}

my $foo = Foo.new(:3bar);

say $foo.bar;
