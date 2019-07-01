#!/usr/bin/env perl6

use v6;

"zipi zape" ~~ m:g/(\w+) { say $/[0] } /;
