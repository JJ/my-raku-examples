#!/usr/bin/env perl6

use v6;
sub zipi { { { die "Something bad happened" }() }() };
try {
    zipi;
}
if ($!) {
    say $!.backtrace[*-1].perl;
}


