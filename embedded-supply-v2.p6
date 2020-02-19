#!/usr/bin/env perl6

use v6;


my $supply = IO::Notification.watch-path( "/var/log/syslog" );

my $parsed = supply {
    whenever $supply {
        emit( { Seen => $_.event }  );
        CATCH {
            default {
                $*ERR.say: .message;
            }
        }
    }
}


$parsed.tap( -> $v { say $v });

sleep 40;
