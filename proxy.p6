#!/usr/bin/env perl6

use v6;

sub double() is rw {
    my $storage = 0;
    return-rw Proxy.new(
        FETCH => method ()     { $storage * 2    },
        STORE => method ($new) { $storage = $new },
    )
}
my $doubled := double();
$doubled = 4;
say $doubled;       # OUTPUT: «8␤»
