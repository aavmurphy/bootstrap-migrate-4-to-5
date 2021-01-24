#!/usr/bin/perl

use strict;
use IO::All -utf8;
use YAML;

my $changes_regex = YAML::LoadFile( '../changes.yaml' );

my $old < io( '4.5.3.css' );
my $new < io( '5.0.0-beta1.css' );

##
print "Classes in the old, but not in the new CSS file\n";

my @old_classes = ( $old =~ /\.([a-z][\w\d\-]*)/g );
my @new_classes = ( $new =~ /\.([a-z][\w\d\-]*)/g );

##
my %classes;

foreach my $c ( @old_classes )
	{
	$classes{ $c }++;
	}

foreach my $c ( @new_classes )
	{
	delete $classes{ $c };
	}

my @removed = sort keys %classes;

print scalar( @removed ) . " removed\n"; 
print join (" ", @removed); 
print "\n";

##
print "check the YAML config file (should be blank) \n";

foreach my $regex ( keys %{ $changes_regex->{class} }, @{ $changes_regex->{class_remove} }  )
	{
	foreach my $class ( keys %classes )
		{
		delete $classes{ $class } if $class =~ /$regex/;
		}
	}

my @check = sort keys %classes;

print scalar( @check ) . " not in YAML file (should be zero)\n"; 
print join (" ", @check); 
print "\n";

