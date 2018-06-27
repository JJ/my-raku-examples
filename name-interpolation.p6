#!/usr/bin/env perl6

use v6;
use trace;

my %Hamadryas = map { slip $_, 0 }, <
    februa
    honorina
    velutina
    >;


my $pair = :%Hamadryas;
say $pair;   # Hamadryas => { ... }


put '-' x 50;

#{
#my $name = 'Hamadryas';
# Since I already have the name, I could just:
# my $pair = $name => %::($name)

# But, couldn't I just line up the syntax?
# my $pair = :%::($name);  # does not work
# say $pair;
