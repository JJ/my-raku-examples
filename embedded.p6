#!/usr/bin/env perl6

use v6;

my $this-is-true = True;

say "Yay" if #`[ wait for it ] $this-is-true;

#|( This is an example of stringification:
    =item Numbers turn into strings
    =item Regexes operate on said strings
    =item C<with> topicalizes and places result into $_
) 
sub search-in-seq( Int $end, Int $number ) {
    with (^$end).grep( /^$number/ ) {
        .say for $_<>;
    }
}
#=« Uses
    * topic
    * decont operator
»

search-in-seq( 44, 3);
