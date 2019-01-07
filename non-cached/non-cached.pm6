# From https://stackoverflow.com/questions/54066301/is-it-possible-to-make-compile-time-code-non-cached-in-perl-6
sub foo($a) { $a.say }

INIT {
    # Things here may be a lot more complex
    foo 1;
    foo 2;
    foo 1;
    %( one => 1 )
}
