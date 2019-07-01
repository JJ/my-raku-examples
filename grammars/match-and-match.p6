#!/usr/bin/env perl6

use v6;


grammar G {
    token TOP { \w+ }
}

class Action-Arg {
    method TOP ($match) { $match.make: ~$match }
}

class Action {
    method TOP ($/) { make ~$/ }
}

class Action-Fails {
    method TOP ($match) { make ~$match }
}

say G.parse( "zipi", actions => Action-Arg );
say G.parse( "zape", actions => Action );
say G.parse( "pantuflo", actions => Action-Fails );
