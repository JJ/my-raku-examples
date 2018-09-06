#!/usr/bin/env perl6

use v6;

use Pod::To::HTML;

my $pod = q:to/END/;
=pod
=defn What is this
My I<super B<awesome>> embedded C<pod>
document!
END
say Pod::To::HTML.render($pod);
