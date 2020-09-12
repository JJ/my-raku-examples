#!/usr/bin/env raku

use Resourceable;

for <libraries/whatever data/swim.csv> -> $resource {
    with Resourceable.gimme{$resource} {
       .say;
       say "-" x 10, ">";
       ( .repo-name, .repo, .dist-id, .key )».say;
    }
}
