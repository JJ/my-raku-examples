#!/usr/bin/env perl6

use v6;


module Regexes {
    my regex letters   is export { <[\w] - [_]>+ };
}

import Regexes;

say "what_ever" ~~ /<letters>/;
