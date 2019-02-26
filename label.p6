#!/usr/bin/env perl6

use v6;

class Pet {
    has $!name;
    has $.barks;
}

class User {
    has $.name;
    has @.pets;
    method Str( User:D: ) { $!name };
}

say User.new( :name("Lou") );

my @users = ( User.new( name => "Lou",
                        pets => [Pet.new(:name("Fido"), :barks)]),
              User.new( name => "Louise",
                        pets => [Pet.new(:name("patch"), :!barks)]) ) ;
USERS:          # the label
for @users -> $u {
    dd $u;
    for $u.pets -> $pet {
        # usage of a label
        next USERS if $pet.barks;
    }
    say "None of {$u}'s pets barks";
}
say USERS.^name;        # OUTPUT: «Label␤»
