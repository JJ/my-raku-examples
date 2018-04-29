#!/usr/bin/env perl6

use v6;

use NativeCall;

my class TimeStruct is repr<CStruct> {
    has int32 $!tm_sec;
    has int32 $!tm_min;
    has int32 $!tm_hour;
    has int32 $!tm_mday;
    has int32 $!tm_mon;
    has int32 $!tm_year;
    has int32 $!tm_wday;
    has int32 $!tm_yday;
    has int32 $!tm_isdst;
    has Str   $!tm_zone;
    has long  $!tm_gmtoff;
}


sub localtime(uint32 $epoch is rw --> TimeStruct) is native {*}
my atomicint $time = time;
dd localtime( $time );
