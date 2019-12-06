#!/usr/bin/env perl6

use v6;

with 'foo'.IO {
    .spurt: "First line is text, then:\nBinary";
    my $fh will leave {.close} = .open;
    $fh.get.say;         # OUTPUT: «First line is text, then:␤»
    $fh.encoding: Nil;
    $fh.slurp.say;       # OUTPUT: «Buf[uint8]:0x<42 69 6e 61 72 79>␤»
}
