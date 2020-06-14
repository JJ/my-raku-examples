#!/usr/bin/env perl6

use NativeCall;

our class mat4 is repr('CStruct') is export {
    HAS num32 @.mat[16] is CArray;

    submethod BUILD( :@mat = 0.Num xx 16) {
        for ^16 {
            @!mat[$_] = @mat[$_];
        }
    }

    method gist() {
        "[", (@!mat[$_] for ^16).join(", "), "]";
    }
}

sub kmMat4Fill( mat4 $mat, CArray[num32] $filler )
        returns mat4 is native('kazmath') is export {*}

my mat4 $one-mat .= new;
my CArray[num32] $riller .= new( 2.Num xx 16 );
my $returned-mat = kmMat4Fill( $one-mat, $riller );
say $returned-mat;
