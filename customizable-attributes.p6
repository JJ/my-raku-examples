#!/usr/bin/env perl6

class Journey {
    has $.origin;
    has $.destination;
    has @!travelers;
    has $!notes;

    multi method notes() { $!notes };
    multi method notes( Str $note ) { $!notes ~= $note };
}

my $trip = Journey.new( :origin<Here>, :destination<There>,
			travelers => <þor Freya>,
			notes => "Here we go" );

say $trip;
