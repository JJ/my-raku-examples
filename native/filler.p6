#!/usr/bin/env raku

use NativeCall;

class mat4 is repr('CStruct') {
    HAS num32 @.mat[16] is CArray;
}
my mat4 $one-mat .= new;
say $one-mat;
