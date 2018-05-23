#!/usr/bin/env perl6

use v6;

my $test-file = "/tmp/test";
given open($test-file, :w, :bin) {
    .write: Buf.new(ord('A'), 0xFA, ord('B'), 0xFB, 0xFC, ord('C'), 0xFD);
    .close;
}

say slurp($test-file, enc => 'utf8-c8').encode("utf8-c8").list;
 
