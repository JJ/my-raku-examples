#!/usr/bin/env perl6

use v6;

class Cook {
    has @.utensils  is rw;
    has @.cookbooks is rw;
    
    method cook( $food ) {
        return "Cooking $food";
    }
    
    method clean_utensils {
        return "Cleaning $_" for @.utensils;
    }

    multi method gist(Cook:U:) { '⚗' ~ self.^name ~ '⚗' }
    multi method gist(Cook:D:) { '⚗ Cooks with ' ~ @.utensils.join( " ‣ ") ~ ' using ' ~ @.cookbooks.map( "«" ~ * ~ "»").join( " and ") }
}

my $cook = Cook.new(
    utensils => <spoon ladle knife pan>,
    cookbooks => ['Cooking for geeks','The French Chef Cookbook']);

say Cook.gist;
say $cook.gist;


