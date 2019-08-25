#!/usr/bin/env perl6

grammar G {


  proto rule TOP { * }

  rule TOP:sym<y>  { «<.sym>» }
  rule TOP:sym<ら>  { «<.sym>» }

}

say G.parse('y'); # ｢y｣
say G.parse('ら'); 
