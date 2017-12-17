grammar Paragraph {
    token TOP {^ <word>[ (\s+) <word>]+ $}
    token word { <letters> | <quoted> }
    token quoted { (<quote>) <letters> $0 } 
    token quote { "*"|"`" }
    token letters { \w+ }
}

my $paragraph = "This includes one *enhanced* word and `backquote`";
my $parsed = Paragraph.parse($paragraph);
say $parsed;

