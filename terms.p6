#!/usr/bin/env perl6

use v6;

sub term:<þor> { "Is mighty" }
sub Þor { "Is mighty" }

say þor, Þor;
say Þor ~ Þor;

sub term:<✔> { True }

say ✔;

