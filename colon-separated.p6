#!/usr/bin/env raku

class Foo {
    has $.bar = "Foo";
    method whoami($me:) {
        "Well I'm class " ~ $!bar ~ ", of course!"
    }
}
say Foo.new( :bar("Bar") ).whoami; # OUTPUT: «Well I'm class Foo, of course!␤»
