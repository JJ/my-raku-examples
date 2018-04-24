#!/usr/bin/env perl6

use v6;

use NativeCall;

class timespec is repr('CStruct') {
    has uint32 $.tv_sec;
    has long $.tv_nanosecs;
}
    
sub clock_gettime(uint32 $clock-id, timespec $tspec --> uint32) is native(Str) { * };

my timespec $this-time .=new;

my $result = clock_gettime( 0, $this-time);

say "$result, $this-time";
