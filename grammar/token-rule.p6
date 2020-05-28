use Grammar::Tracer;

grammar Email {
  token TOP { <name> '@' <host> }  
  token name { \w+ ['.' \w+]* }
  token host { \w+ % '.' }
}
say Email.parse('foo.bar@baz.example.com');
