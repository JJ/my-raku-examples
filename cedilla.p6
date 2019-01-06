#!/usr/bin/env perl6

use v6;

for ^55295 -> $letter {
    if $letter.uniname ~~ /COMBINING/  {
	say chr($letter), " ⇒ ", $letter.uniprop, " → ", $letter.uniname ;
    }
}
