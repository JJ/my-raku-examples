#!/usr/bin/env raku

$FOO::bar = 33;
say FOO::.^methods;
say ::FOO::.gist;
