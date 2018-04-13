#!/usr/bin/env perl6

sub calling-frame() {
    for 1..* -> $level {
	say $level;
	given callframe($level) -> $frame {
            when $frame ~~ CallFrame {
		next unless $frame.code ~~ Routine;
		say $frame.code.package;
		last;
            }
            default {
		say "no calling routine or method found";
		last;
            }
	}
    }
}

calling-frame;
