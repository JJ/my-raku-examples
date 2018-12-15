#!/usr/bin/env perl6

use v6;

module M {
    our $variable is export = 42;
    sub wat( --> Int ) is export { $variable }
}

import M;
say wat();
$M::variable = 43;
say wat();
