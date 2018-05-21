#!/usr/bin/env perl6

use v6;

my @strings=("Perl 6", "Perl 5", "Perl    6");

for @strings -> $perl is copy {
    say $perl ~~ /Perl \s+ (<[56]>)/;
    $perl ~~ s:g/Perl \s+ (<[56]>)/Perl\&nbsp;$0/;
    say $perl;
}

