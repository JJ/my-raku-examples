#!/usr/bin/env perl6

use v6;
my $þor = sub { die "Something bad happened" };
try {
    $þor();
}
with $! { .backtrace.print ; }

say "New exception";
try {
    die [404, 'File not found']; # throw non-exception object
}
with $! { .backtrace.print ; }
print "Got HTTP code ",
$!.payload[0],          # 404
" and backtrace ",
$!.backtrace.Str;
