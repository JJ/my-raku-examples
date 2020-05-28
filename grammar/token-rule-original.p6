use Grammar::Tracer;

grammar Email {
    token TOP { <name> '@' <subdomain>? <domain> '.' <tld> }  
    token name { \w+ ['.' \w+]* }
    token domain { \w+ }
    token subdomain { \w+ | \w+ % '.'}
    token tld { \w+ }
}


say Email.parse('foo.bar@baz.example.com');
say Email.parse('foo@example.com');
say Email.parse('foo.bar.baz@quux.zuuz.example.com');
