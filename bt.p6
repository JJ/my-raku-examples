#!/usr/bin/env perl6

try die "Something bad happened";
if ($!) {
    print $!.backtrace;
}
