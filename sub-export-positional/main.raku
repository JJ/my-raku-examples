# main.raku

use lib 'lib';
use MyModule 'foo';
say foo.new(); # OUTPUT: «MyModule::Class.new␤»

always();      # OK   - is imported
# shy();         # FAIL - won't be imported
