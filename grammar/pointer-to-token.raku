grammar TestGrammar {
    token num { \d+ }
}

my $a-token = TestGrammar.^lookup('num').assuming(TestGrammar.new());

say "33" ~~ $a-token;
