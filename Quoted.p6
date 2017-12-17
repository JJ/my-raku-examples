use Grammar::Tracer;
grammar Quoted {
    token TOP { ^ <letters> | <quoted> $}
    token quoted { (<quote>) <letters> $0  } 
    token quote { "*"|"`" }
    token letters { \w+ }
}

class Quoted-actions {
    method TOP ($/) { make [~] $/.caps».value.map({ .made // .Str }) }
    method word($/) { make $<quoted>?? $<quoted>.made !! $<letters>.made }
    method quoted($/) { make $<quote>.made~$<letters>.made~$<quote>.made;}
    method quote($/) { make ~$/ }
    method letters($/) { make ~$/ }	
}

my $quoted = "*enhanced*";
my $parsed = Quoted.parse($quoted);
say $parsed;

