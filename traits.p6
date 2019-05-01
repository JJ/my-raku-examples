#!/usr/bin/env perl6

use v6;

multi trait_mod:<is>(Variable $a, :$doc!) {
    say "$a,  $doc";
}


my $dog is doc('barks');
my @birds is doc('tweet');
my %cows is doc('moooo');
