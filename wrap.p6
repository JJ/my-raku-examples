#!/usr/bin/env perl6

use v6;

class Baz {
    method bar () { return "baþ" };
}

my &method_bar = Baz.^find_method("bar");
my $wrapped = &method_bar.wrap( { " → " ~ callsame() ~ " ← " } );

say Baz.bar();
