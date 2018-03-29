#!/usr/bin/env perl6

use v6;

use Pod::To::HTML;

my $pod = q:to/END/;
=pod
See L<https://modules.perl6.org/> .
END

use MONKEY-SEE-NO-EVAL;   
say pod2html(EVAL($pod ~ "\n\$=pod"));
