#!/usr/bin/env perl6

use v6;

use lib <.>;

require foo <&bar>;

say "In requirer";

say bar;
