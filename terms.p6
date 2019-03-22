#!/usr/bin/env perl6

use v6;

sub term:<þor> { "Is mighty" }
sub Þor { "Is mighty" }

say þor, Þor;

sub term:<✔> { True }

say ✔;

sub dice {(1...6).pick }

say dice + dice;
