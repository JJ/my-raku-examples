#!/usr/bin/env perl6

use v6;

sub colon-pair( :$key-value ) {
    say $key-value;
}

my $key-value = 'value';

colon-pair( :$key-value );
colon-pair( key-value => $key-value );
