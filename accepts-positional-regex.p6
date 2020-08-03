#!/usr/bin/env raku

class Exitcode does Positional {
    has @.captured handles <elems AT-POS EXISTS-POS>;
}
my \ex = Exitcode.new: :captured(<abc def ghi>);
say [ex[1], ex ~~ /a/]; # OUTPUT: [def (Any)]
