#!/usr/bin/env raku

constant FILENAME = "/tmp/foo";

spurt( FILENAME );

say FILENAME.IO.modified;
say FILENAME.IO.modified;
