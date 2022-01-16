#!/usr/bin/env raku

use lib ".";

use Singleton;

singleton Foo {
    has $.bar;
}

my $foo = Foo.new(:3bar);

say $foo.bar;

say Foo.new().bar;
say Foo.new(:88bar).bar;
