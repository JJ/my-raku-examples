grammar Enhanced-Paragraph {
    token TOP { <superword>[ (\s+) <superword>]+ }
    token superword { <word> | <enhanced-word> }
    token word { \w+ }
    token enhanced-word { \* <word> \* }
}

my $paragraph = "þor is *mighty*";
my $parsed = Enhanced-Paragraph.parse($paragraph);
say $parsed;


