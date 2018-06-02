#!/usr/bin/env perl6

use v6;

class Point {
    has Int $.x;
    has Int $.y;
    multi method new($x, $y) {
        self.bless(:$x, :$y);
    }
}

my $p = Point.new(-1, 1);
say $p.perl;
say Point.new( x => 3, y => 8 );


