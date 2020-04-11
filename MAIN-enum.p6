#!/usr/bin/env raku

enum Flags  (
    FLAG_FOO => 0b001,
    FLAG_BAR => 0b010,
    FLAG_BAZ => 0b100,
);

sub MAIN( Enumeration $flag = FLAG_FOO) {
    say "Flagging ", $flag.enums;
}
