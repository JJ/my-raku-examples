#!/usr/bin/env raku

use Colorizable;

my $string = "Hello" but Colorizable;

say $string.colorize(red) ~ " " ~ ("you" but Colorizable).colorize(blue);
