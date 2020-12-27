#!/usr/bin/env raku


my %syns-by-name does Associative[Str,List] = :Bq<Bq becquerel becquerels>;

my @list := <C coulomb coulombs>;
%syns-by-name<C> := @list;

my Str  @syns = %syns-by-name<Bq>;
say @syns;

