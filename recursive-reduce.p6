
multi sub average( $a ) {$a };

multi sub average(  @array (Num(Int) $a,  Num(Int) $b) ) {
    return ($a + $b )/2;
}

multi sub average( Num $a,  Num $b ) {
    return ($a + $b )/2;
}

multi sub average( @array (Num(Int) $a, Num(Int) $b, Num(Int)  $c)) {
    return average( $a, $b ) * ⅔ + $c/3;
}

multi sub average(  @nums where .elems > 3 ) {
    my $elems = @nums.elems;
    return average( @nums[0..*-1]* ($elems-1)/$elems + @nums[*-1]/$elems );
}

say average((^$_).Array) for 2,3,33;
