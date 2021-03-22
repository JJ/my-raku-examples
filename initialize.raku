class A {
    has @.foo handles <Str gist raku>;
    multi method STORE(*@!foo, :$INITIALIZE!) { }
    multi method STORE(|) { die "Immutable" }
}

my @a is A = 1,2,3,4;
say @a;        # OUTPUT: «[1,2,3,4]␤»
@a = 4,5,6,7;  # dies: Immutable
