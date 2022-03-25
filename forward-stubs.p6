#!/usr/bin/env raku

class Foo {...}
class Bar {
    has Foo $.foo;
}
class Foo {
    say "This is a Foo object";
}


say a;
sub a() { 42 }
