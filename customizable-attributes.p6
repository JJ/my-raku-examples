#!/usr/bin/env perl6

class Journey {
    has $.origin;
    has $.destination;
    has @.travelers;
    has Str $.notes is rw;

    multi method notes() { $!notes };
    multi method notes( Str $note ) { $!notes ~= "$note\n\t" };

    method Str { "⤷ $!origin\n\t" ~ self.notes() ~ "\n$!destination ⤶\n" };
}

my $trip = Journey.new( :origin<Here>, :destination<There>,
			travelers => <þor Freya> );

$trip.notes("First steps");
$trip.notes("Almost there");
print $trip;
