#!/usr/bin/env raku


# A custom exception defined
class ForbiddenWord is Exception {
    has Str $.word;

    method message { "This word is forbidden: «$!word»" }
}

sub say-word ( $word ) {
    ForbiddenWord.new(:word($word)).fail if $word eq 'foo';
    $word.say;
}

my $result = say-word("foo");
say $result.exception; 
