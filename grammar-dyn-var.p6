#!/usr/bin/env perl6

use v6;


grammar GrammarAdvice {
    my $use-ws;
    rule TOP {
        "use" <type> "for" <significance> "whitespace by default"
    }
    token type {
        | "rules"   { $use-ws = 1 }
        | "tokens"  { $use-ws = 0 }
        | "regexes" { $use-ws = 0 }
    }
    token significance {
        | <?{ $use-ws == 1 }> "significant"
        | <?{ $use-ws == 0 }> "insignificant"
    }
}

say GrammarAdvice.subparse("use rules for significant whitespace by default");
