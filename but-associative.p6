#!/usr/bin/env raku


my %syns-by-name does Associative[Str,List] = Bq => "Bq", "becquerel", "becquerels";

my Str  @syns = %syns-by-name<Bq>;
say @syns;
