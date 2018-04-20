#!/usr/bin/env perl6

# Taken from 
# https://stackoverflow.com/questions/49942969/when-is-perl-6s-w-word-boundary-not-a-word-boundary

use v6;

my $string = 'Hamadryas perlicus';
say $string ~~ /
    <?after  Hamadryas <|w> \s+ >
    (\w+)
    /;

say $string ~~ /
    <?after Hamadryas « \s+ >
    (\w+)
    /;


