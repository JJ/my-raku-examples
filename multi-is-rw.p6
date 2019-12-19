#!/usr/bin/env raku

proto þoo (|) {*}
multi sub þoo( $ðar ) { $ðar + 42 }
multi sub þoo( $ðar is rw ) { $ðar = 42 }

my $bar = 7;
say þoo($bar);

