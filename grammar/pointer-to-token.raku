grammar TestGrammar {
    token num { \d+ }
}


my $test-grammar = TestGrammar.new();
my $token = $test-grammar.^lookup('num');

say "3" ~~ TestGrammar.$token;
