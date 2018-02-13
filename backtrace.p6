#!/usr/bin/env perl6

use v6;
my $þor = sub { die "Something bad happened" };
try {
    $þor();
}
if ($!) {
    say $!.backtrace; # OUTPUT: «Something bad happened.␤»
}

try {
    die [404, 'File not found']; # throw non-exception object
}
say "Got HTTP code ",
$!.payload[0],          # 404
" and backtrace ",
$!.backtrace;
