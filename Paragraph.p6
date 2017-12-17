
grammar Paragraph {
    token TOP {^ <word>[ (\s+) <word>]+ $}
    token word { <letters> | <quoted> }
    token quoted { (<quote>) <letters> $0 } 
    token quote { "*"|"`"|"**" }
    token letters { \w+ }
}

class Paragraph-actions {
    method TOP ($/) { make [~] $/.caps».value.map({ .made // .Str }) }
    method word($/) { make $<quoted>?? $<quoted>.made !! $<letters>.made }
    method quoted($/) { say "Quoted"; make $<quote>.made ~ $<letters>.made ~ $<quote>.made;}
    method quote($/) { make ~$/ }
    method letters($/) { make ~$/ }	
}

my $paragraph = "This includes one *enhanced* word and `backquote` and **boldface**";
my $parsed = Paragraph.parse($paragraph, actions => Paragraph-actions.new);
say $parsed;
say $parsed.made;
