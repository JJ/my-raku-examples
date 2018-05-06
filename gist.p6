#!/usr/bin/env perl6

use v6;

class Employee {
    has $.salary;
}

class Cook is Employee {
    has @.utensils  is rw;
    has @.cookbooks is rw;
    
    method cook( $food ) {
        return "Cooking $food";
    }
    
    method clean_utensils {
        return "Cleaning $_" for @.utensils;
    }

    multi method gist(Cook:U:) { '⚗' ~ self.^name ~ '⚗' }
    multi method gist(Cook:D:) { '⚗ Cooks with ' ~ @.utensils.join( " ‣ ") ~ ' using ' ~ @.cookbooks.join( " ䷉ ") }
}

class Baker is Cook {
    method cook( $confection ) {
        return "Baking a tasty $confection";
    }

    multi method gist(Baker:U:) { '○' ~ self.^name ~ '○' }
    multi method gist(Baker:D:) { '○ Bakes with ' ~ @.utensils.join( " ‣ ") ~ ' using ' ~ @.cookbooks.join( " ䷉ ") }
}

my $cook = Cook.new(
    utensils => <spoon ladle knife pan>,
    cookbooks => 'The Joy of Cooking',
    salary => 40000);

$cook.cook( 'pizza' );       # OUTPUT: «Cooking pizza␤»
say $cook.utensils.perl;     # OUTPUT: «["spoon", "ladle", "knife", "pan"]␤»
say $cook.cookbooks.perl;    # OUTPUT: «["The Joy of Cooking"]␤»
say $cook.salary;            # OUTPUT: «40000␤»

my $baker = Baker.new(
    utensils => 'self cleaning oven',
    cookbooks => "The Baker's Apprentice",
    salary => 50000);

$baker.cook('brioche');      # OUTPUT: «Baking a tasty brioche␤»
say $baker.utensils.perl;    # OUTPUT: «["self cleaning oven"]␤»
say $baker.cookbooks.perl;   # OUTPUT: «["The Baker's Apprentice"]␤»
say $baker.salary;           # OUTPUT: «50000␤»
say $baker.gist;

say Cook.gist;
say Baker.gist;
