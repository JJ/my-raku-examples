#!/usr/bin/env raku

class Foo {}
my Hash[Foo, Foo] $MAP;

say $MAP.DEFINITE;
my $map = $MAP.new;
say $map.DEFINITE;

my $f1 = Foo.new;
my $f2 = Foo.new;

$map{$f1} = $f2;
say $map;
