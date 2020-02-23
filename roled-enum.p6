#!/usr/bin/env raku

role BitmaskEnumeration {
    multi method ACCEPTS(::?CLASS:D: Int:D $value --> Bool:D) {
	say $value;
	say $.value;
	say $?CLASS;
        so $value +& $.value
    }
}
enum Flags does BitmaskEnumeration (
    FLAG_FOO => 0b001,
    FLAG_BAR => 0b010,
    FLAG_BAZ => 0b100,
);

 say 0b111 ~~ FLAG_FOO & FLAG_BAR & FLAG_BAZ; # OUTPUT: «True␤» 
