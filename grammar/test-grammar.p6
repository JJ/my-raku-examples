grammar TestGrammar {
    token TOP { \d+ }
}
 
class TestActions {
    method TOP($/) {
        make(2 + $/);
    }
}
 
my $match = TestGrammar.parse('40', actions => TestActions.new);
say $match;         # OUTPUT: «｢40｣␤» 
say $match.made;    # OUTPUT: «42␤» 
