#!/usr/bin/env raku

class Foo {
    method ^bar( Mu \foo) {
	foo.^set_name( foo.^name ~ "[þ]" );
	return foo;
    }
}

my $foo = Foo.new();
say $foo.^name;
Foo.^bar( );
say $foo.^name;
