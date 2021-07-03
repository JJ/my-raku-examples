use lib 'lib';

use MyModule;
say $var;          # OUTPUT: «one␤»
say @array;        # OUTPUT: «(one two three)␤»
say %hash;         # OUTPUT: «{one => two, three => four}␤»
doit();            # OUTPUT: «Greetings from exported sub␤»
say ShortName.new; # OUTPUT: «MyModule::Class.new␤»
