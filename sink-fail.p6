#!/usr/bin/env raku

sub find-the-number ( Int $n where $n < 10 ) {
    if $n == 7 {
        return True;
    } else {
        fail "Not that number" ;
    }
}

for 1..^10 {
    try {
        sink find-the-number($_);
    };
    say "Found $_" unless $!;
}
