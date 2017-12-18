use Grammar::Tracer;
grammar Quoted {
    token TOP { ^ <letters> | <quoted> $}
    token quoted { (<quote>) <letters> $0  } 
    token quote { "*"|"`" }
    token letters { \w+ }
}

my $quoted = "*enhanced`";
my $parsed = Quoted.parse($quoted);
say $parsed;

