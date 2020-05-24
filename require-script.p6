#!/usr/bin/env raku

use lib <.>;

require "./say-env.p6";

{
    @*ARGS[0] = "foo";
    require "./sub-main.p6";
}
