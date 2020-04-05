#!/usr/bin/env raku

role Versioned {
    method version () {
	return self.^api;
    }
}

#class WithApi does Versioned {}
class WithApi:ver<0.0.1>:auth<github:JJ>:api<0> does Versioned {}
class WithApi:ver<0.0.1>:auth<github:JJ>:api<1> does Versioned {}
    
#say WithApi.new.version;
say WithApi:api<0>.new.version;
say WithApi:api<1>.new.version;
