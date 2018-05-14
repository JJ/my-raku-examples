#!/usr/bin/env perl6

use v6;

class HTTP::Header does Associative does Iterable {
    subset StrOrArrayOfStr where Str | ( Array & {.all ~~ Str} );
    
    has %!fields of StrOrArrayOfStr
    handles <iterator AT-KEY EXISTS-KEY DELETE-KEY push list kv keys values>;
    
    method Str { #`[not shown, for brevity] }
}
