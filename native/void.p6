#!/usr/bin/env perl6

use v6;
use NativeCall;

sub this_is_void() is native("./libvoid.so") { * };

my void $nothing;
say $nothing.perl;
my $ret = this_is_void();
say $ret;
