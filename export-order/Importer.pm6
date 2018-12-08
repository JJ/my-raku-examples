use v6;

use Exporter;

my $importer = $Exporter::exported ~ ' is mighty';

sub importer-value () is export { return $importer };
