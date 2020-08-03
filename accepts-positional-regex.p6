#!/usr/bin/env raku

class Exitcode does Positional does Iterable {
    has @.captured handles <elems AT-POS EXISTS-POS iterator>;
}
my $ex = Exitcode.new: :captured(<abc def ghi>);
say [$ex[1], $ex ~~ /a/]; # OUTPUT: [def (Any)]
