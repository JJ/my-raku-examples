#!/usr/bin/env perl6

use v6;

class Hero { #taken from https://medium.freecodecamp.org/a-short-overview-of-object-oriented-software-design-c7aa0a622c83

    has @!inventory;
    has Str $.name;
    submethod BUILD( :$name, :@inventory ) {
        $!name = $name;
        @!inventory = @inventory
    }
    
}

sub new-main($name, *@stuff ) {
    Hero.new(:name($name), :inventory(@stuff) ).perl.say
}

RUN-MAIN( &new-main, Nil );

