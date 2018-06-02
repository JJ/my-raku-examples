#!/usr/bin/env perl6

use v6;

class Point {
    has Int $.x;
    has Int $.y;
    multi method new($x, $y) {
        self.bless(:$x, :$y);
    }
}

class Point-with-ID is Point {
    has Int $.ID  is rw = 0;

    submethod BUILD( *%args ) {
        for self.^attributes -> $attr {
            if $attr.Str ~~ /ID/ {
                $attr.set_value( self, "*" ~ %args<x> ~ "-" ~ %args<y> ) ;
            }
        }
    }
}

my $p = Point-with-ID.new(1,2);
say $p.perl;



