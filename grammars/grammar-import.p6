#!/usr/bin/env perl6

use v6;


grammar Word {
    token TOP { ^ <letters> $}
    regex letters   is export { <[\w] - [_]>+ };
    sub exported () is export  { return 'exported' };
}

# my $quoted = "_enhanced_";
# my $parsed = Word.parse($quoted);
# say $parsed;

import Word;

say exported;
say "what_ever" ~~ /<letters>/;
