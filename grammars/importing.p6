#!/usr/bin/env perl6

use v6;


class Letters {
    token letters is export { <[\w] - [_]>+ }
    method lets() is export { "foo" }
}

import Letters;

say lets(Letters.new());



