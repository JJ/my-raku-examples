#!/usr/bin/env perl6

use v6;

my $i = 0; 
my $supply1 = supply { loop { await Promise.in(3); done if $i++> 5; emit("B"); } };
my $supply2 = supply { loop { await Promise.in(1); done if $i++> 5; emit("A"); } };

react 
{ 
    #whenever Supply.merge($supply1, $supply2) -> $x { $x.print }
    whenever $supply1 -> $x { $x.print };
    whenever $supply2 -> $x { $x.print };
}
