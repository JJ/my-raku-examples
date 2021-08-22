#!/usr/bin/env raku

class Foo {
    method ^bar( Mu \foo, Str $addenda) {
	foo.^set_name( foo.^name ~ $addenda );
    }
}

my $foo = Foo.new();
say $foo.^name;
Foo.new.^bar(  "[baz]" );
say $foo.^name;
say Foo.^name;
