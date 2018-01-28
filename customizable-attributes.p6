#!/usr/bin/env perl6

class Journey {
    has $.origin;
    has $.destination;
    has @.travelers;
    has Str $!notes = "==Start==\n";

    multi method notes() { $!notes };
    multi method notes( Str $note ) { $!notes ~= "\n" ~ $note };
}

my $trip = Journey.new( :origin<Here>, :destination<There>,
			travelers => <þor Freya> );

say "\t→" ~ $trip.notes();
$trip.notes("First steps");
say "\t→" ~ $trip.notes();
