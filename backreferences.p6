#!/usr/bin/env perl6

use v6;

say "zipi zape" ~~ /$<my-letter> = (\w)\w» \s+ \w+($<my-letter-again> = {$<my-letter>})/;

