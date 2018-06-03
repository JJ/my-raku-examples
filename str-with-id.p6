#!/usr/bin/env perl6

use v6;

class Str-with-ID is Str {
    my $.counter = 0;
    has Str $.string;
    has Int $.ID;

    method TWEAK() {
        $!ID = $.counter++;
    }
}

say Str-with-ID.new(string => 'First').ID;
say Str-with-ID.new(string => 'Second').ID;





