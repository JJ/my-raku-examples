#!/usr/bin/env perl6

use v6;

class HTTP::Header does Associative  {
    subset StrOrArrayOfStr where Str | ( Array & {.all ~~ Str} );
    
    has %!fields of StrOrArrayOfStr
    handles < list kv keys values>;
    
    method Str { #`[not shown, for brevity] }
    method AT-KEY     ($key) is rw { %!fields{normalize-key $key}        }
    method EXISTS-KEY ($key)       { %!fields{normalize-key $key}:exists }
    method DELETE-KEY ($key)       { %!fields{normalize-key $key}:delete }
    method push(*@_) { #`[not shown, for brevity] }
    
    sub normalize-key ($key) { $key.subst(/\w+/, *.tc, :g) }
}
