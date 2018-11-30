#!/usr/bin/env perl6

use v6;

use lib <../grammars>;

use Santa-Letter;

#|{ This reads a letter file in text format.
With no arguments, it will read the C<letter.txt> file.
}
sub MAIN ( Str $file = "letter.txt" ) {
    my $letter =$file.IO.slurp;
    my $parsed = Santa-Letter.parse($letter);
    say $parsed<signature>.trim;
    say $=pod[0].perl;
}

