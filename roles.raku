#!/usr/bin/env raku

role by-n[$n=1] {
    method multiply(Str $str) { return $str x $n; }
}

role by-string[$n=1] does by-n[$n] {
    method whatever(Str $str) { return $n ~ "→" ~ $.multiply( $str ); }
}

class mighty-þor does by-string[2] {};

say mighty-þor.whatever("*");
