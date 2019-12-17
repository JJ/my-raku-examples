#!/usr/bin/env raku

class Foo { 
    has num $.numillo;
    submethod BUILD( :$!numillo = 3.5e0 ) {}
};
my $foo = Foo.new;
say $foo.perl; 
