#!/usr/bin/env perl6

use v6;

given slurp("read-utf8.p6", enc => 'utf8') -> $f {
    say "UTF8";
}



