#!/usr/bin/env perl6

use v6;

sub ordinated( :st(:nd(:rd(:th($num))))=-1 ) {
    say "I got $num."
}
ordinated(:0th); # OUTPUT: «I got 0.␤»
ordinated(:1st); # OUTPUT: «I got 1.␤»
ordinated(:2nd); # OUTPUT: «I got 2.␤»
ordinated(:3rd); # OUTPUT: «I got 3.␤»
ordinated(:4th); # OUTPUT: «I got 4.␤»
ordinated(:5th);
ordinated(:1th);
ordinated();     # OUTPUT: «I got -1.␤»
