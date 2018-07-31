#!/usr/bin/env perl6

enum Norse-Gods ( Þor => "Sif", Oðin => "Frigg", Njörðr => "Skaði" );
say Þor.kv;

for Norse-Gods::.values -> $þ {
    say $þ, " followed by ", $þ.succ if $þ ne $þ.succ ;
}
