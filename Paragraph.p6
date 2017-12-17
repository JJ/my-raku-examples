grammar Paragraph {
    token TOP { <word>[ (\s+) <word>]+ }
    token word { (<[\*\`]>)? (\w+)+? $0? }
}

my $paragraph = "This includes several words";
my $parsed = Paragraph.parse($paragraph);
say $parsed;

$paragraph = "This includes one *enhanced* word";
$parsed = Paragraph.parse($paragraph);
say $parsed;

