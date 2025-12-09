#!/usr/bin/perl
use strict;
use warnings;

my $file = "temp.txt";

my $niceCount = 0;

open my $fh, '<', $file or die "Could not open file '$file': $!";

# 0 means lights are off
# 1 means lights are on
my %lights = (
    [0,0] => 0,
    [999,999] => 0
);

my $currentLightCount = 0;

while (my $line = <$fh>) {
    chomp $line;
    my @lineArray = split ' ', $line;

    my firstCoords = @lineArray[-3];
    my endCoords = @lineArray[-1];

    # if ($line =~ m/toggle/){
    #     print "TOGGLE\n";
    #     my $currentLight = $lights{[0,0]};

    #     if ($currentLight == 0){
    #         turnLightOn([0,0]);
    #     } elsif ($currentLight == 1){
    #         turnLightOff([0,0]);
    #     } else {
    #         turnLightOn([0,0]);
    #     }
    # } elsif ($line =~ m/turn on/){
    #     print "TURN ON\n";
    # } elsif ($line =~ m/turn off/){
    #     print "TURN OFF\n";
    # } else{
    #     print "RegEx Error";
    #     exit
    # }
}

sub turnLightOn {
    my $lightKey = $_[0];

    $currentLightCount += 1;
}

sub turnLightOff {
    my $lightKey = $_[0];

    $currentLightCount -= 1;
}


print "Current lights on: $currentLightCount\n";