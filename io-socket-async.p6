#!/usr/bin/env perl6

use v6;

constant $SOCKET_PORT = 7000;
constant $SOCKET_ADDR = '0.0.0.0';
my $socket = IO::Socket::Async.listen($SOCKET_ADDR, $SOCKET_PORT);
react {
    whenever $socket -> $conn {
        whenever $conn.Supply(:bin) {
                say "Received --> "~$_.decode('utf-8');
        }
    }
}
