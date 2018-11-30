#!/usr/bin/env perl6

use v6;

use lib <../grammars>

use Santa-Letter;

sub MAIN ( Str $file = "letter.txt" ) {
    my $letter =$file.IO.slurp;
    my $parsed Santa-Letter.parse($letter);
    say $parsed<signed>.trim;
}
