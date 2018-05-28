#!/usr/bin/env perl6

use v6;

my $fh = "/tmp/bar".IO.open;
my $lines = $fh.lines;
say "Read $lines.elems() lines"; #reifying before closing handle
close $fh;
say $lines[0]; # no problem!
