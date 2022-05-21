#!/usr/bin/env raku

say (١,١,* + *...∞)[١..٣٣].trans( [0..9] => ['٠'..'٩'] )
