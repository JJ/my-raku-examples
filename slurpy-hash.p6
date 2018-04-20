#!/usr/bin/env perl6

use v6;

dump(alpha => 'a', beta => 'b'); # Prints:
                                 # alpha = a
                                 # beta = b

sub dump(**%data) {
    for %data.kv {say "$^a = $^b"}
}

sub slurpy( *%hash ) { say %hash;}
# sub slurpy-due( %hash ) { %hash.perl.say;}

slurpy( 'is' => 'a','hash' =>'nice' );
# slurpy-due( %('is' => %('a' => 'hash')));

