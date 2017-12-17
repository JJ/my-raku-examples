grammar Quoted {
    token word { <letters> | <quoted> }
    token quoted { <(<quote>)> <letters> $0 } 
    token quote { "*"|"`" }
    token letters { \w+ }
}

my $quoted = "*enhanced*";
my $parsed = Paragraph.parse($quoted);
say $parsed;

