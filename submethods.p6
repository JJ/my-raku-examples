#!/usr/bin/env perl6

use v6;

class Hero { 
    has @.inventory;
    has Str $.name;
    submethod BUILD( :$!name, :@!inventory ) {
        @!inventory = self.clean-inventory( @!inventory );
    }
    submethod clean-inventory( @inventory ) {
        @!inventory.unique.sort
    }
}

my Hero $þor .= new( name => "Þor",
                     inventory => ( "Mjollnir", "Megingjörð", "Mjollnir" ) );
say $þor.inventory;

