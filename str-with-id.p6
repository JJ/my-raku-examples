#!/usr/bin/env perl6

use v6;

class Str-with-ID is Str {
    my $counter = 0;
    our $hierarchy-counter = 0;
    has Str $.string;
    has Int $.ID;

    method TWEAK() {
        $!ID = $counter++;
        $hierarchy-counter++;
    }
    
}

class Str-with-ID-and-tag is Str-with-ID {
    has Str $.tag;
}

say Str-with-ID.new(string => 'First').ID;
say Str-with-ID.new(string => 'Second').ID;
say Str-with-ID-and-tag.new( string => 'Third', tag => 'Ordinal' ).ID;

say $Str-with-ID::hierarchy-counter;





