#!/usr/bin/perl

# Perl program demonstrating creation of class and object

use strict;
use warnings;

package student;

# constructor
sub student_data
{
	# shift takes package name student
	# and assigns to variable class
	my $class_name = shift;
	my $self = {
		'FirstName' => shift,
		'LastName' => shift
	};

	# use of bless function
	bless $self, $class_name;

	return $self;
}

# object creation
my $JohnDoe = student_data student("John", "Doe");

print "$JohnDoe->{'FirstName'}\n";
print "$JohnDoe->{'LastName'}\n";



