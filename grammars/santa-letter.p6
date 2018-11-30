#!/usr/bin/env perl6

grammar Santa-Letter {
    token TOP { <dear> \v+ <paragraph>}
    token paragraph { <superword>[ (\s+) <superword>]+ }
    token superword { <word> | <enhanced-word> }
    token word { \w+ }
    token enhanced-word { <word> (\,|\.|\:)? }
    token dear {Dear \s+ [S|s]anta [\,|\:]? }
    token signature { \w+ \s* \w* }
	
}

sub MAIN ( Str $file = "letter.txt" ) {
#    say Paragraph.parse("This would be a paragraph, that would be.");
#    say Dear.parse("Dear Santa:");
    my $letter =$file.IO.slurp;
    my $parsed = Santa-Letter.parse($letter);
    say $parsed;
}


