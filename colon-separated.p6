#!/usr/bin/env raku

class Foo {
    has $.bar = "Foo";
    multi method whoami($ where /^^<[A..Z]>/:) {
        "Hello big " ~ $!bar 
    }
    multi method whoami($ where /^^<[a..z]>/:) {
        "Hello little " ~ $!bar
    }
}
say Foo.new( :bar("Bar") ).whoami; # OUTPUT: «Hello big Bar␤»
say Foo.new( :bar("bar") ).whoami; # OUTPUT: «Hello little bar␤»
