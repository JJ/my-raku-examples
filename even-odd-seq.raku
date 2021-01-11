#!/usr/bin/env raku

say "$_ → " ~ $_.Bool for (^10).map: { $_ but so $_ %% 2 };

