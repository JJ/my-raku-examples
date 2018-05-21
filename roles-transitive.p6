#!/usr/bin/env perl6

use v6;

role Ur { }
role F does Ur { }
class G does F { }

for Ur, F, G -> $class-or-role {
    CATCH {
        default {
            say "not classy";
        }
    }
    $class-or-role.say;
    $class-or-role.^mro.say;
}

