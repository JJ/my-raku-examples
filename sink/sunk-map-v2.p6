#!/usr/bin/env raku

say gather for 1 {
    ^3 .map: *.take;
}

