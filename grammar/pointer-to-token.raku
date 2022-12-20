grammar TestGrammar {
    token num { \d+ }
}

my $test-grammar = TestGrammar.new();
my $a-token = $test-grammar.^lookup('num').assuming($test-grammar);

say "33" ~~ $a-token;
