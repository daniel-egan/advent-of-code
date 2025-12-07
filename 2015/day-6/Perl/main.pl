#!/usr/bin/perl
use strict;
use warnings;

my $file = "temp.txt";

my $niceCount = 0;

open my $fh, '<', $file or die "Could not open file '$file': $!";

while (my $line = <$fh>) {
    chomp $line;
    print "$line\n";

}