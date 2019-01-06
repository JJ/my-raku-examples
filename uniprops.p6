#!/usr/bin/env perl6

use v6;

for ^55295 -> $letter {
    if $letter.uniprop ~~ /^^N/  {
	say chr($letter), " ⇒ ", $letter.uniprop;
    }
}
