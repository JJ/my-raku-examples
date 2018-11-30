#!/usr/bin/env perl6

grammar Santa-Letter {
    #    token TOP { <dear> \v+ <paragraph> [\v+ <paragraph>]* \v+ <signature> }
    token TOP { <dear> \v+ <paragraph>}
    token paragraph { <superword>[ (\h+) <superword>]+ }
    token superword { <word> | <enhanced-word> }
    token word { \w+ }
    token enhanced-word { <word> [\,|\.|\:] }
    token dear {Dear \h+ [S|s]anta [\,|\:]? }
#    token signature {\h+ \w+ \h* \w* }
	
}

sub MAIN ( Str $file = "letter.txt" ) {
#    say Paragraph.parse("This would be a paragraph, that would be.");
    #    say Dear.parse("Dear Santa:");
    my $letter =$file.IO.slurp;
    say $letter;
    # my $parsed = Santa-Letter.parse($letter);
    #say $parsed;
#     my $letter = "Dear Santa:\n\n

# I have been a bood goy.";

    say Santa-Letter.parse($letter);
}


