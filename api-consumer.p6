#!/usr/bin/env perl6

use v6;

my $api-key = %*ENV<API_KEY> // die "Need the API key";

say "API key is $api-key";
