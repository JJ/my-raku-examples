#!/usr/bin/env perl6

use v6;

my $formatted-text = "Fourscore and seven years ago...".indent(8);
say $formatted-text;
my @words = "Abe", "Lincoln";
@words.push("said", $formatted-text.comb(/\w+/));
say @words;
say @words.join: '--';
# OUTPUT: «Abe--Lincoln--said--Fourscore--and--seven--years--ago␤»
