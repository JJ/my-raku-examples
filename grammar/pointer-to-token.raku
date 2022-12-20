grammar TestGrammar {
    token num { \d+ }
}


my $test-grammar = TestGrammar.new();
my $token = $test-grammar.^find_method('num');

say "3" ~~ TestGrammar.$token;
