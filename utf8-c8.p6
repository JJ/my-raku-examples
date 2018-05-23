#!/usr/bin/env perl6

use v6;

my $cmd = Q{env ACME=$'L\xe9on' } ~ $*EXECUTABLE ~ Q{ -e 'say("lived")'};
my $proc = shell $cmd, :out;
$cmd = Q{echo 'say(42)' > $'L\xe9on' && } ~ $*EXECUTABLE ~ Q{ $'L\xe9on' && rm $'L\xe9on'};
$proc = shell $cmd, :out;
