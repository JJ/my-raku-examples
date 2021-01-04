#!/usr/bin/env raku

use Packr;

for (Packr::Pack'd Packr::B::Pack'd Packr::U::Pack'd ) -> \P {
    say P.new().raku;
}
