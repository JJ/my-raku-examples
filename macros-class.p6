#!/usr/bin/env perl6

use experimental :macros;
class Mass-lb { }

macro mass-lb-alias( $c ) {
    my $mass-lb = "Mass-$c";
    quasi { class  {{{$mass-lb}}} is Mass-lb }
};

for <lbs pounds pound pnds> {
    mass-lb-alias( $_ );
}
