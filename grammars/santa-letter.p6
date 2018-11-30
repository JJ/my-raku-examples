#!/usr/bin/env perl6

grammar Paragraph {
    token TOP { <superword>[ (\s+) <superword>]+ }
    token superword { <word> | <enhanced-word> }
    token word { \w+ }
    token enhanced-word { <word> (\,|\.|\:)? }
}

grammar Dear {
    token TOP {Dear \s+ [S|s]anta [\,|\:]? }
}

grammar Santa-Letter is Paragraph {
    token TOP { <dear> <paragraph> [ (\v+) <paragraph>]+ <signature>}
    token dear { \v+ Dear \s+ [Ss]anta \,|\: \v }
    token signature { \w+ \s* \w* }
	
}

sub MAIN ( Str $file = "letter.txt" ) {
#    say Paragraph.parse("This would be a paragraph, that would be.");
    say Dear.parse("Dear Santa:");
    my $letter =$file.IO.slurp;
    my $parsed = Santa-Letter.parse($letter);
    say $parsed;
}


