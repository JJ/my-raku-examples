grammar Enhanced-Paragraph {
    token TOP { <superword>[ (\s+) <superword>]+ }
    token superword { <word> | <enhanced-word> }
    token word { \w+ }
    token enhanced-word { \* <word> \* }
}

class Enhanced-Paragraph-actions {
    method TOP ($/) { make [~] $/.caps».value.map({ .made // .Str }) }
    method superword($/) { make $<enhanced-word>?? $<enhanced-word>.made !! $<word>.made }
    method enhanced-word($/) { make "<em>"~$<word>.made~"</em>";}
    method word($/) { make ~$/ }	
}

my $paragraph = "This includes several words";
my $parsed = Enhanced-Paragraph.parse($paragraph);
say $parsed;

$paragraph = "This includes one *enhanced* word";
$parsed = Enhanced-Paragraph.parse($paragraph);
say $parsed;

$paragraph = "This includes *two* *enhanced* words";
$parsed = Enhanced-Paragraph.parse($paragraph, actions => Enhanced-Paragraph-actions.new);
say "\nParsed→\n", $parsed.made;
