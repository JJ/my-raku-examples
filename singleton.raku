#!/usr/bin/env raku

use lib ".";

use Singleton;

singleton Foo {
    has $.bar;

    method gist() {
        return "→ $!bar";
    }
}

my $foo = Foo.new(:3bar);

say $foo.bar;

say Foo.new().bar;
say Foo.new(:88bar).bar;

singleton Bar {
    has $.baz;
}

my $quux = Bar.new( :44baz );
say $quux.baz;

say Bar.new(:77baz).baz;
