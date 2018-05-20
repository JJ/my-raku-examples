#!/usr/bin/env perl6

use v6;

my $this-is-true = True;

say "Yay" if #`[ wait for it ] $this-is-true;

with (^33).grep( /^2/ ) { #`( This is an example of stringification:
    * Numbers turn into strings
    * Regexes operate on said strings
    * C<with> topicalizes and places result into $_
) my @results = $_<>; #`« Uses
    * topic
    * decont operator
»
  .say for @results;
}
