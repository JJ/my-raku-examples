#!/usr/bin/env perl6

use v6;

say "random.txt".IO.slurp;

react whenever "random.txt".IO.Supply: :5size  {
    .say ;
}


