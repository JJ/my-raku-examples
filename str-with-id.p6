#!/usr/bin/env perl6

use v6;

class Str-with-ID is Str {
    my $.counter = 0;
    has Str $.string;
    has Int $.ID;

    method new( Str $string ) {
        self.bless( :$string, ID => $.counter++ )
    }
}

say Str-with-ID.new('First').ID;
say Str-with-ID.new('Second').ID;





