#!/usr/bin/env perl6

unit grammar Santa-Letter;

token TOP { <dear> \v+ <paragraph> [\v+ <paragraph>]* \v+ <signature>\v*}
token paragraph { <superword>[ \h+ <superword>]+ }
token superword { <word> | <enhanced-word> }
token word { \w+ }
token enhanced-word { <word> [\,|\.|\:] }
token dear {Dear \h+ [S|s]anta [\,|\:]? }
token signature {\h+ \w+ \h* \w* }




