#!/usr/bin/env perl6

use v6;

class CX::Vaya does X::Control {
    has $.message
}

sub ea {
    CONTROL {
        default {
            say "Controlled { .^name }: { .message }"
        }
    }
    CX::Vaya.new( message => "I messed up!" ).throw;

}
ea;
