#!/usr/bin/env perl6

use v6;

# Taken from https://stackoverflow.com/questions/50032392/perl6-iosocketinet-could-not-receive-data-from-socket-connection-reset-by-p

my $c = IO::Socket::INET.new(:host<localhost>, :port(3333));
$c.print: "{time}\n";
#say $c.recv; #commented out on purpose
say "Sleeping";
sleep 1 ;
say "Slept";
$c.close ;
