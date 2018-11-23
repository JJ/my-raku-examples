#!/usr/bin/env perl6

use v6;


grammar Word {
    token TOP { ^ <numbers> $}
    regex numbers   is export { <[\d]>+ };
    our regex letters   is export { <[\w] - [_]>+ };
    sub exported () is export  { return 'exported' };
}

# my $quoted = "_enhanced_";
# my $parsed = Word.parse($quoted);
# say $parsed;

say Word.^lookup("new").perl;
say Word.^lookup("letters").perl;
say Word.^lookup("numbers").signature;
say Word.^lookup("exported").perl;
say Word.^lookup("TOP").perl;
import Word;

say exported;
say "what_ever" ~~ /<letters>/;

say Word.parse( "123" );
