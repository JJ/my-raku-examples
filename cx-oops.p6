#!/usr/bin/env perl6

use v6;

class CX::Vaya does X::Control {
    has $.message
}

loop {
    once {
        CX::Vaya.new( message => "I messed up!" ).throw;
    }
    last;
    CONTROL {
        default {
            say "Controlled { .^name }: { .message }"
        }
    }
}
