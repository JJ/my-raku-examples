#!/usr/bin/env perl6

use v6;

my Set $alphabets-with-digits;
for ^55295 -> $letter {
    if $letter.uniprop eq "Nd"  {
	$alphabets-with-digits ∪= $letter.uniname.words.first;
    }
}
print "Alphabets: ", $alphabets-with-digits.elems, " →",  $alphabets-with-digits.keys.join(", ");
