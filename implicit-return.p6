#!/usr/bin/env perl6

use v6;

sub returns-ret () {
    CATCH {
        default {}
    }
    "ret";      
}

sub doesn't-return-ret () {
    "ret";
    CATCH {
        default {}
    } 
}

sub explicitly-return-ret () {
    return "ret";
    CATCH {
        default {}
    } 
}

say returns-ret;
say doesn't-return-ret;
say explicitly-return-ret;
