#!/usr/bin/env perl6

use v6;

for $*ARGFILES.lines -> $l {
    say "Long lines in {$*ARGFILES.path}"
        if $l.chars > 72 ;
}
