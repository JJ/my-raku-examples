#!/usr/bin/env raku



say % .classify-list: {
    [ Date.new($_~"-01-01").is-leap-year ,
      $_ mod 3  ]
    }, 1965..2021;

