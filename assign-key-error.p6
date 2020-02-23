#!/usr/bin/env raku

class Foo {}
my %map = Hash[Foo, Foo].new ;

%map{Foo.new} = Foo.new;

%map.say;
