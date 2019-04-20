#!/usr/bin/env perl6

use v6;

role Card {
    method Str(::T:) {
        when T ~~ Str { "→" ~ self }
        when T ~~ Pair { self.value ~ " of " ~ self.key }
    }
}

my $beer-card does Card = "7♦";
say $beer-card.Str
