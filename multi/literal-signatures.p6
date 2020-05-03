proto sub stuff(|) {*}
multi sub stuff(33) { 58 }
multi sub stuff(⅓) { 43 }
multi sub stuff(Int)  { 3 }
multi sub stuff(Complex)  { 66 }

say stuff($_) for (33, ⅓, i, 48);
    
