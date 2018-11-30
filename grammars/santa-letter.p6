#!/usr/bin/env perl6

use lib <.>;

use Santa-Letter;

sub MAIN ( Str $file = "letter.txt" ) {
    my $letter =$file.IO.slurp;
    say $letter;
    say Santa-Letter.parse($letter);
}


