#!/usr/bin/env perl6

unit grammar Santa-Letter;

our $pod = $=pod[0];

token TOP { <dear> \v+ <paragraph> [\v+ <paragraph>]* \v+ <signature>\v*}
token paragraph { <superword>[ \h+ <superword>]+ }
token superword { <word> | <enhanced-word> }
token word { \w+ }
token enhanced-word { <word> [\,|\.|\:] }
token dear {Dear \h+ [S|s]anta [\,|\:]? }
token signature {\h+ \w+ \h* \w* }

=begin pod

=head1 NAME

Santa-Letter - A grammar for letters to Santa for the L<Perl 6 Advent Calendar|https://perl6advent.wordpress.com>

=head1 SYNOPSIS

Parses letters formatted nicely and written by all good kids in the world.

=begin code

use Santa-Letter;

say Santa-Letter.parse("Dear Santa\nAll I want for Christmas\nIs you\n Mariah");

=end code

You can also access particular elements in the letter, as long as they are included on the grammar

    my $letter="Dear Santa,\nI have not been that good.\nJust a paper clip will do\n Donald";
    say Santa-Letter.parse($letter)<signature>

Also

=for code :notest :reason("Variable defined above")
say "The letter signed by ", Santa-Letter.parse($letter)<signature>,
    " has ", Santa-Letter.parse($letter)<paragraph>.elems, " paragraphs";
    
=end pod


