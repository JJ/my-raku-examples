#!/usr/bin/env perl6

use v6;

class Hero { #taken from https://medium.freecodecamp.org/a-short-overview-of-object-oriented-software-design-c7aa0a622c83

    has @!inventory;
    has Str $.name;
    submethod BUILD( :$name, :@inventory ) {
        $!name = $name;
        @!inventory = @inventory
    }
    
    method act {
        return @!inventory.pick;
    }
}

my $hero = Hero.new(:name('Þor'),
                    :inventory(['Mjölnir','Chariot','Bilskirnir']));
say $hero.act;
