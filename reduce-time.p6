#!/usr/bin/env raku
 
sub mittel {
    return @_.sum /@_.elems;
}

sub standardab{
  my $mittel = mittel(@_);
  my $foo = 0;
  for @_ {
    $foo += ($_ - $mittel)**2;
  }
  $foo = sqrt($foo/(@_.elems));
}

sub standardab-for {
  my $mittel = mittel(@_);
  sqrt( [+] do hyper for @_ {  ($_ - $mittel)**2 } ) / @_.elems ;

}

sub standardab-bis {
    my $mittel = mittel(@_);
    @_[0] = (@_[0]-$mittel)²;
    my $foo = @_.reduce({$^a + ($^b-$mittel)**2});
    $foo = sqrt($foo/(@_.elems));
}


sub standardab-ter {
    my $mittel = mittel(@_);
    @_[0] = (@_[0]-$mittel)²;
    my $foo = @_.reduce(*  + (*-$mittel)**2);
    $foo = sqrt($foo/(@_.elems));
}

sub standardab-quad {
    my $mittel = mittel(@_);
    my $foo = [+] @_.map: (* - $mittel)**2;
    $foo = sqrt($foo/(@_.elems));
}

sub standardab-race {
    my $mittel = mittel(@_);
    my $foo = [+] @_.hyper.map: (* - $mittel)**2;
    $foo = sqrt($foo/(@_.elems));
}

my @stuff = 1.rand xx 1000000;

my $time = now;
say standardab-for( @stuff );
say now - $time;
