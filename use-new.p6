#!/usr/bin/env perl6

use v6;

class Person {
    has $.name is rw;
    multi method new( $a, $b ){ 
        my $name = $a ~ ',' ~ $b;
        self.bless( :$name );
    }

}

class Child is Person {
    submethod BUILD( ) {
        self.name =  "{self.name} Jr." 
    }
}

my $þor = Person.new('þor','Almighty');
say $þor.name;
$þor.name = 'þor Almighty';
my $kid = Child.new("Joss", "Whedon");
say $kid;
