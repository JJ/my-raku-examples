#!/usr/bin/env perl6

sub ßub (|capture ( :$þoo ) ) {
    say capture.perl;
    for capture.hash.kv -> $key, $value {
	say "$key, $value";
    }
    say $þoo;
}

ßub( þoo => 33 );
