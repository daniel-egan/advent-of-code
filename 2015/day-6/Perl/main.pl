#!/usr/bin/perl

use strict;
use warnings;

my $file = "temp.txt";

my $niceCount = 0;

open my $fh, '<', $file or die "Could not open file '$file': $!";

# 0 means lights are off
# 1 means lights are on
my %lights = (
  # '0,0'     => 0,
  # '999,999' => 0
);

my $currentLightCount = 0;

while (my $line = <$fh>) {
  chomp $line;
  my @lineArray = split ' ', $line;

  my @firstCoords = split 'n', @lineArray[-3];
  my @endCoords   = split 'n', @lineArray[-1];

  if ($line =~ /toggle/) {
    print "TOGGLE\n";
    # for x = x1 to x2:
    for ($x = @firstCoords[0], $x <= )
    my $currentLight = $lights{};

    if ($currentLight == 0) {
      turnLightOn($currentLight);
    }
    elsif ($currentLight == 1) {
      turnLightOff($currentLight);
    } else {
      turnLightOn($currentLight);
    }
  }
  elsif ($line =~ /turn on/) {
    # print "TURN ON\n";
  }
  elsif ($line =~ /turn off/) {
    # print "TURN OFF\n";
  } else {
    # print "RegEx Error";
    # exit
  }
}

sub turnLightOn {
  my $lightKey = $_[0];

  $currentLightCount++;
}

sub turnLightOff {
  my $lightKey = $_[0];

  $currentLightCount--;
}

print "Current lights on: $currentLightCount\n";