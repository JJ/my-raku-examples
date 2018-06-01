#!/usr/bin/env perl6

use v6;

class Person {
    has $.name;
    multi method new( $a, $b ){ 
        my $name = $a ~ ',' ~ $b;
        self.bless( :$name );
    }

}

class Child is Person {}

my $kid = Child.new("Joss", "Whedon");
say $kid;
