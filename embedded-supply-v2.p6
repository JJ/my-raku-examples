#!/usr/bin/env perl6

use v6;


my $supply = IO::Notification.watch-path( "/var/log/syslog" );

my $parsed = supply {
    $supply.tap: -> $v {
        emit( { Seen => $v.event }  );
        CATCH {
            default {
                $*ERR.say: .message;
            }
        }
    }
}


$parsed.tap( -> $v { say $v });

sleep 40;
