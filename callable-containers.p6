#!/usr/bin/env perl6

my &callable = -> $ν { say "$ν is", $ν ~~ Int??" whole"!!" not whole" }
callable( ⅓ );
callable( 3 );

my &also-callable = -> { say "Being called" };
say &also-callable.^name;
also-callable();
