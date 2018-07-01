#!/usr/bin/env perl6

use v6;

my $error-code = "333";
sub bad-sub {
    die "Something bad happened";
}

# {
#     $error-code = "222";
#     bad-sub;
# }

try {
    my $error-code = "111";
    bad-sub;

    CATCH {
        default {
            say "Error $error-code ", .^name, ': ',.Str
        }
    }
}




