my $failure = IO::Socket::INET.new(:host('localhost'), :port(12340));
die 'error' if $failure
