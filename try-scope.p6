#!/usr/bin/env perl6

use v6;

sub bad-sub {
    die "Something bad happened";
    return "not returning";
}

try {
    my $return = bad-sub;
    say "Returned $return";
    CATCH {
        default {
            say "Error ", .^name, ': ',.Str;
            $return = '0';
            .resume;

        }
    }
}




