grammar TestGrammar {
    token num { \d+ }
}

my $test-grammar = TestGrammar.new();
my $token = $test-grammar.^lookup('num').assuming($test-grammar);

say "33" ~~ $token;
