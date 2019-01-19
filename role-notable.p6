#!/usr/bin/env perl6

use v6;

constant ⲧ = " " xx 4;
role Notable {
    has Str $.notes is rw;

    multi method notes() { "$!notes\n" };
    multi method notes( Str $note ) { $!notes ~= "$note\n" ~ ⲧ };

}

class Journey does Notable {
    has $.origin;
    has $.destination;
    has @.travelers;

    method Str { "⤷ $!origin\n" ~ ⲧ ~ self.notes() ~ "$!destination ⤶\n" };
}

my $trip = Journey.new( :origin<Here>, :destination<There>,
			travelers => <þor Freya> );

$trip.notes("First steps");
notes $trip: "Almost there";

print $trip;
