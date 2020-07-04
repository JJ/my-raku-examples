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

$str = "(one of us)";
for G,H,I -> $grammar {
    say $grammar.parse( $str );
}

