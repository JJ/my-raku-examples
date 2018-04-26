#!/usr/bin/env perl6

use v6;

# Taken from https://stackoverflow.com/questions/50032392/perl6-iosocketinet-could-not-receive-data-from-socket-connection-reset-by-p
my $listen = IO::Socket::INET.new(:listen, :localhost<localhost>, :localport(3333));
loop {
    my $conn = $listen.accept;
    while my $buf = $conn.recv(:bin) {
        say "Received ", $buf;
        $conn.write: $buf;
    }
    $conn.close;
}
