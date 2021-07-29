ENTER            { note "ENTER phaser with topic $_.VAR.WHAT.raku()" }
my $a will enter { note "will enter with topic $_.VAR.WHAT.raku()"; $_ = 42 } will leave { .say };

note 'main';
note "\$a: $a";  #OUTPUT «$a: 42»
$a = "foo";
