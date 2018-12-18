unit class Pod::To::Golf;
method render( $pod-tree ) is export {
    say Backtrace.new().full;
    say "At $?LINE tree is ", $pod-tree.perl;
}
