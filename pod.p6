#!/usr/bin/env perl6

use v6;

use Pod::To::HTML;

my $link="See L<https://modules.perl6.org/> .";
my $pod=qq:to/END/;
=pod
$link
=pod
}
=puf
Well
=pad
Pad
=ped
Ped
=pid
Pid
END
say $pod;

use MONKEY-SEE-NO-EVAL;
my @e-pod = EVAL($pod ~ "\n\$=pod");
say @e-pod.perl;

