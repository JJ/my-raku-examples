#!/usr/bin/env raku

use Packr;

for (Packr::Packd Packr::B::Packd ) -> \P {
    say P.new().raku;
}
