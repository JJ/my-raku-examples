#!/usr/bin/env perl6

use v6;

sub main( $file = "Caesar.txt" ) {
    my @txt = $file.IO.slurp.split(/ /);
    say $txt;
    say $txt.comb.map( (*.ord -13).chr ).join("");
}
