#!/usr/bin/env perl6

use v6;

my @foo = 1..3;
my @bar;

for @foo <-> $value {
    given $value {
	when $value %% 2 { $value = $value but "Even" }
	default { $value = $value but "Odd" }
    }
	@bar.push: $value;
}

say @bar;
