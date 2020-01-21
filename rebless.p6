#!/usr/bin/env raku

use nqp;

class Person { ; }
class Woman is mixin is Person { ; }
my $tom = Person.new;
my $lisa = Woman.new;

say $tom.^name;  # -> Person
say $lisa.^name; # -> Woman

Metamodel::Primitives.rebless($lisa, Person);
