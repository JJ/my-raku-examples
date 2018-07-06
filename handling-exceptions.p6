#!/usr/bin/env perl6

class E is Exception { method message() { "Just stop already!" } }

try {
    E.new.throw; # this will be local
    say "This won't be said.";
}

say "I'm alive!";

try {
    die "No, I expect you to DIE Mr. Bond!";

    say "I'm immortal.";
    E.new.throw;
    say "No, you don't!";
}
