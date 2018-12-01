#!/usr/bin/env perl6

use v6;

use lib <../grammars>;

use Santa-Letter;
use Data::Dump;

my $letter="Dear Santa,\nI have not been that good.\nJust a paper clip will do\n Donald";
say "The letter signed by ", Santa-Letter.parse($letter)<signature>,
    " has ", Santa-Letter.parse($letter)<paragraph>.elems, " paragraphs";
