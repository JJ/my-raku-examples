grammar RepeatChar {
    token start($character) { $character+ }
}

class RepeatCharAction {
    method start($/) { make "→ $/.made" }
}

say RepeatChar.subparse('bbbabb', :rule('start'), :args(\('b')));
say RepeatChar.subparse('bbbabb', :rule('start'), :args(\('b')), actions => RepeatCharAction.new).made;
say RepeatChar.parse(   'bbbabb', :rule('start'), :args(\('b')));
say RepeatChar.subparse('bbbabb', :rule('start'), :args(\('a')));
say RepeatChar.subparse('bbbabb', :rule('start'), :args(\('a')), :pos(3));
