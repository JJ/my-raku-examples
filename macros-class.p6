#!/usr/bin/env perl6

use experimental :macros;
class Mass-lb { }

macro mass-lb-alias( $c ) {
    quasi " class Mass-{{{$c}}} is Mass-lb "
};

for <lbs pounds pound pnds> {
    mass-lb-alias( $_ );
}
