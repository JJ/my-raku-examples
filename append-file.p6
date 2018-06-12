#!/usr/bin/env perl6

use v6;

my $file = './primes.txt';
sub MAIN ( Int:D $low, Int:D $high where * >= $low ) {
    unless my $fh = open $file, :a {
        die "Could not open '$file': {$fh.exception}";
    }
    
    for $low .. $high {
        $fh.put: $_ if .is-prime;
    }
}
