use Zef;
use Zef::CLI;

sub test(
    $CONFIG,
    $verbosity,
    Bool :force(:$force-test),
    Int  :timeout(:$test-timeout),
) {
    return Zef::CLI::get-client(:config($CONFIG), :$force-test, :$test-timeout);
}

say test( "foo",VERBOSE );
