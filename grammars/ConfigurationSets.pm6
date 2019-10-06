use KeyValuePairs;
use Grammar::Tracer;

unit grammar ConfigurationSets is KeyValuePairs;

token comment {
    \h+ '#' .+ \n
}

rule pair {
    <key=.identifier> '=' <value=.identifier> <comment>
}
