#!/usr/bin/env perl6

use v6;

use experimental :macros;

macro a { 'foo';
          CATCH {
                # will definitely catch all the exception 
                default { say .^name, " → ", .Str; }
            }
        };
say a;

