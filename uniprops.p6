#!/usr/bin/env perl6

use v6;

for ^55295 -> $letter {
    if $letter.uniprop eq "Nd"  {
	say chr($letter), " ⇒ ", $letter.uniprop;
    }
}
