#!/usr/bin/env perl6

use v6.d;

for $*ARGFILES.handles -> $fh {
    .say with $fh;
}

