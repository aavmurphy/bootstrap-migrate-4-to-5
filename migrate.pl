#!/usr/bin/perl

use YAML;
use Data::Dumper;

print <<END;

Migrate from Bootstrap v4 to v5 helper

- edit the script for some config

END

my $FILE_GLOB	= '/saturdaywalkers/swc/*html /saturdaywalkers/swc/perl /saturdaywalkers/swc/css';
my $FILE_REGEX	= '\.(html|shtml|js|pl|pm)$';

##
my $regex		= YAML::LoadFile( 'changes.yaml' );

## the -d \n catches spaces in filenames
my $find		= qq( find $FILE_GLOB -type f | grep -P '$FILE_REGEX' | sort | xargs -d "\n" grep -lP  );

##
foreach my $class ( sort keys %{ $regex->{class} })
	{
	&check( "class/rename: $class =>  $regex->{class}{$class}", $class );
	}

foreach my $class ( sort @{ $regex->{class_remove} })
	{
	&check( "class/remove: $class", $class );
	}

foreach my $class ( sort @{ $regex->{data_attributes} })
	{
	&check( "data-attribute/rename data-bs- : $class", $class );
	}

##
sub check
	{
	my ( $text, $class ) = @_;

	my @matches = qx( $find '$class' );

	return if ! @matches;

	# adding | head to get the first few lines only causes pipe errors
	$#matches = 10 if $#matches > 10;

	print "$text\n";
	print " @matches\n\n";
	}
	
