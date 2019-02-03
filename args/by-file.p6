#!/usr/bin/env perl6

use v6.d;

CATCH { default { say "Problems with ", .^name, ': ', .Str } };

for $*ARGFILES.handles -> $fh {
    say $fh;
}

