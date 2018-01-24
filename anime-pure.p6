#!/usr/bin/env perl6

sub syllabes() is pure {
    say "Generating syllabes";
    my @vowels = <a e i o u>;
    return  @vowels.append: <k m n sh d r t y> X~ @vowels;
}
BEGIN { say ‘Begin’ }
say ‘Start’;
say (^100).map: { syllabes().pick(2..5).join("") };
