#!/usr/bin/env perl6

use v6;

for $*ARGFILES.handles -> $f {
    say "Long lines in {$f.path}"
        if $f.slurp.lines.grep( *.chars > 72 );
}
