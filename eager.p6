#!/usr/bin/env perl6

use v6;

my $fh = "/tmp/bar".IO.open;
my $lines = eager $fh.lines;
close $fh;
say $lines[0];
