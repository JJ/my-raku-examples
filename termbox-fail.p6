#!/usr/bin/env perl6

use Termbox :ALL;

if tb-init() -> $ret {
    note "tb-init() failed with error code $ret";
    exit 1;
}

END tb-shutdown;

tb-change-cell( 1, 0, "X", TB_BLACK, TB_WHITE );
tb-present;

my $events = Supplier.new;

start {
    while tb-poll-event( my $ev = Termbox::Event.new ) { $events.emit: $ev }
}

react whenever $events.Supply -> $ev {
    given $ev.type {
        when TB_EVENT_KEY {
            given $ev.key {
                when TB_KEY_SPACE {
                    tb-change-cell( 12, 5, "V", TB_GREEN, TB_BLACK );
                }
                when TB_KEY_ESC { done }

            }
        }
    }
}
