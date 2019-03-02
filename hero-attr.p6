#!/usr/bin/env perl6

use v6;

class Hero { 
    has @!inventory;
    has Str $.name;
    submethod BUILD( :$name, :@inventory ) {
        $!name = $name;
        @!inventory = @inventory
    }
}

say Hero.^attributes(:local)[0];
