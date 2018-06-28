#!/usr/bin/env perl6

use v6;
use NativeCall;

sub this_is_void( --> int32 ) is native("./libvoid.so") { * };

my $ret = this_is_void();
say $ret;
