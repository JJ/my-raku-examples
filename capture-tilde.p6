#!/usr/bin/env raku

my $str = "(a)";

say $str ~~ /"(" ~ ")" (\w) /;
say $str ~~ /"(" ~ ")" <( \w )> /;
say $str ~~ /"(" <(~)> ")" \w /;
say $str ~~ /"(" <(~ ")" \w /;


grammar G {
	token TOP {
    	      '(' ~ ')' $<content> = .+?
	}
}

grammar H {
	token TOP {
    	      '(' ~ ')' (.+?)
	}
}

grammar I {
	token TOP {
    	      '(' ~ ')' <( .+? )>
	}
}

grammar J {
	token TOP {
    	      '(' ~ ')' [(.+?)]
	}
}

grammar K {
	token TOP {
    	      '(' ~ ')' [<( .+? )>]
	}
}

$str = "(one of us)";
for G,H,I,J,K -> $grammar {
    say $grammar.parse( $str );
}

