#!/usr/bin/env perl6

use v6;
use MONKEY-SEE-NO-EVAL;

EVAL q:to/END/;
    use experimental :macros;
    
    macro quasi-ast { quasi { {{{'not AST'}}} };}; # from https://github.com/perl6/roast/blob/master/S06-macros/unquoting.t#L68
    say quasi-ast;
END

CATCH {
    # will definitely catch all the exception 
    default { .perl.say ; }
}
