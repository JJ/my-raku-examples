#!/usr/bin/env perl6

if "META6.json".IO.e {
    say "'META6.json' already exists";
    exit 255;
}
# Find out if we are in a git directory
my $auth = "";
my $server = "";
my $source-url = "";
if ".git/config".IO.e {
    my $git-config = ".git/config".IO.slurp;
    $source-url = ($git-config ~~  m{ \[remote \s+ \"origin\"\] \s+ url \s+ \= \s+ <(\S*)> });
}

given $source-url {
      when "" { proceed }
      when /\.com/ { ($server,$auth) = ($source-url ~~ /(\w+).com.(\w+)\//).list;  }
      default { $auth = ($source-url ~~ m{\.\w+\/(\w+)\/}) }	
}

my $meta-json = qq:to/END/;
\{
    "authors" : [
	"Your name"
    ],
    "build-depends" : [ ],
    "description" : "Give a description",
    "name" : "Your Name",
    "auth" : "{$server}:{$auth}",
    "license" : "Provide a License",
    "perl" : "6",
    "provides" : \{ "Module": "lib/Module.pm6"  },
    "tags" : [],
    "resources" : [ ],
    "source-url" : {$source-url},
    "depends" : [
    ],
    "test-depends"  : [
        "Test",
        "Test::META"
    ],
    "version" : "0.0.3"
}
END

spurt("META6.json",$meta-json);
