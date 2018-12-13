#!/usr/bin/env perl6

use v6;

class Point
{
    has Int $.x;
    has Int $.y;
    method Str { "($!x,$!y)" }
    method gist { self.Str }
}
multi sub infix:<cmp>(Point $a, Point $b) { say "Hey $a $b"; $a.y cmp $b.y || $a.x cmp $b.x }


my @p = Point.new(:3x, :2y), Point.new(:2x, :4y), Point.new(:1x, :1y);
say @p.sort( { $^b cmp $^a } );
