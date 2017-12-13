grammar Enhanced-Paragraph {
    token TOP { <superword>[\s+<superword>]+ }
    token superword { <word> | <enhanced-word> }
    token word { \w+ }
    token enhanced-word { \* <word> \* }
}

my $paragraph = "This includes several words";
my $parsed = Enhanced-Paragraph.parse($paragraph);
say $parsed;

$paragraph = "This includes one *enhanced* word";
$parsed = Enhanced-Paragraph.parse($paragraph);
say $parsed;
