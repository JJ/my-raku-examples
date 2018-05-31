#!/usr/bin/env perl6

use v6;

class Foo {
    sub zape () { say "zipi" }
    class Bar {
        method baz () { return 'Þor is mighty' }
        our &zape = { "zipi" };
        our $quux = 42;
    }
}

say Foo::Bar.baz;
say Foo::Bar::zape;
my $bar = 'Bar';

say $Foo::($bar)::quux;
say Foo::Bar::<$quux>;

