#!/usr/bin/env perl6

use v6;

class Person {
    has Int $.age;
    has Str $.name;

    method set-name-age( $!name, $!age ) {}
}

my Person $person .= new;

# Method invocation. Object (instance) is $person, method is set-name-age
$person.set-name-age('jane', 98);   # Most common way
say $person;
$person.set-name-age: 'jane', 98;   # Precedence drop
say $person;
set-name-age($person: 'jane', 98);  # Invocant marker
say $person;
set-name-age $person: 'jane', 98;   # Indirect invocation
say $person;
