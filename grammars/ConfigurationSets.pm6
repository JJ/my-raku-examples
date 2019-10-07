use KeyValuePairs;
use Grammar::Tracer;

unit grammar ConfigurationSets is KeyValuePairs;

token comment {
    \s* '#' .+? $$
}

token pair {
    <key=.identifier> '=' <value=.identifier> <comment>?
}
