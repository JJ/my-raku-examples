grammar Email {
  token TOP { <name> '@' <host> }  
  token name { \w+ ['.' \w+]* }
  token host { [\w+] ** 2..* % '.' }
}

class Email-Action {
    method TOP ($/) {
	my %email;
	%email<name> = $/<name>.made;
	my @fragments = $/<host>.made.split("\.");
	%email<tld> = @fragments.pop;
	%email<domain> = @fragments.pop;
	%email<subdomain> = @fragments.join(".") if @fragments;
	make %email;

    }
    method name ($/) { make $/ }
    method host ($/) { make $/ }
}
say Email.parse('foo.bar@baz.example.com', actions => Email-Action.new).made;
say Email.parse('foo@example.com', actions => Email-Action.new).made;
say Email.parse('foo.bar.baz@quux.zuuz.example.com', actions => Email-Action.new).made;
