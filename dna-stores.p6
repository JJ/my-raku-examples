#!/usr/bin/env perl6

use v6;

role Logger { method log( Str $msg) {…}}

class ConsoLogger does Logger { method log ( Str $msg ) { "❢ $msg".say }}

class DNA {
    has $.chain is rw;
    has Logger $!logger;

    submethod BUILD( :$chain, :$logger = ConsoLogger.new() ) {}

    method STORE (Str $chain where {
			 /^^ <[ACGT]>+ $$ / and
			 .chars %% 3
		     } ,
		       :$INITIALIZE --> DNA) {
	if ($INITIALIZE) {
	    $!logger = ConsoLogger.new();
	    $!logger.log( "Initialized" );
	}

        self.chain  = $chain;
	$!logger.log("Change value to $chain" ); 
	self
    }

    method Str(::?CLASS:D:) { return $!chain.comb.rotor(3).map( *.join("")).join("|") }
};

my @string is DNA = 'GAATCC';
say ~@string;
@string = 'ACGTCG';
say  ~@string;

