use lib 'lib';
use MakeQuestionable Cool;
say ( 0?, 1?, {}?, %( a => "b" )? ).join(' '); # OUTPUT: «False True False True␤»
