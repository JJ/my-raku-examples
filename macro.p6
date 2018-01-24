use experimental :macros;

macro checkpoint {
  my $i = ++(state $n);
  quasi { say "CHECKPOINT $i"; }
}

checkpoint;
for ^5 { checkpoint; }
checkpoint;
