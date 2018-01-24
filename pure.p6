#!/usr/bin/env perl6

use v6;

sub double-pure($a) is pure {
    say ‘pure’;
    $a × 2
}
sub double-dirty($a) {
    say ‘dirty’;
    $a × 2
}
BEGIN { say ‘Begin’ }
say ‘Start’;
say double-pure(8);
for ^20 {
    say double-pure($^þ);
    say double-dirty($^þ);
}

