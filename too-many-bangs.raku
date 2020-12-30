class TMP {
  has $!private;

  submethod BUILD( :$!private ) {}
  
  method !s {
      $!private if $!private;
  }

  method public {
      self!s;
  }

}


say TMP.new( :private("foo"));
