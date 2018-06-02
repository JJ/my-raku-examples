#!/usr/bin/env perl6

use v6;

class Point {
    has Int $.x;
    has Int $.y;

}

class Point-with-ID is Point {
    my $.counter = 0;
    has Int $.ID  is rw = 0;

    multi method new( Int $x, Int $y ) {
        my $ID = $.counter++;
        self.bless( :$ID, :$x, :$y );
    }
}

say Point-with-ID.new(1,2);
say Point-with-ID.new(3,4);




