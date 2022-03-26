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

# role Zipi { ... };
role Zipi {
    has $!zipi;
}

class Zape does Zipi {
    method visit { $!zipi }

    submethod BUILD( :$!zipi ) {};
}


say Zape.new( :42zipi ).visit;


