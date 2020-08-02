#!/usr/bin/env perl6

use v6;


my $supply = IO::Notification.watch-path( "/var/log/syslog" );

$supply.tap( -> $v { say "Got ", $v });

sleep 60;
