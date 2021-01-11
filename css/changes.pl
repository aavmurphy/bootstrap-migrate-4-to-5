#!/usr/bin/perl

use strict;
use IO::All -utf8;

my $old < io( '4.5.3.css' );
my $new < io( '5.0.0-beta1.css' );

my %classes;

my @old_classes = ( $old =~ /\.([a-z][\w\d\-]*)/g );

foreach my $c ( @old_classes )
	{
	$classes{ $c }++;
	}

my @new_classes = ( $new =~ /\.([a-z][\w\d\-]*)/g );

foreach my $c ( @new_classes )
	{
	delete $classes{ $c };
	}

print join "\n", sort keys %classes; 

