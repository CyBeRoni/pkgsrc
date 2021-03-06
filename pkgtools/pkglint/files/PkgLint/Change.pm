# $NetBSD: Change.pm,v 1.3 2015/10/11 21:23:34 rillig Exp $
#
# A change entry from doc/CHANGES-*
#
package PkgLint::Change;

use strict;
use warnings;

sub new($$$$$$) {
	my ($class, $line, $action, $pkgpath, $version, $author, $date) = @_;
	my $self = [ $line, $action, $pkgpath, $version, $author, $date ];
	bless($self, $class);
	return $self;
}
sub line($)			{ return shift()->[0]; }
sub action($)			{ return shift()->[1]; }
sub pkgpath($)			{ return shift()->[2]; }
sub version($)			{ return shift()->[3]; }
sub author($)			{ return shift()->[4]; }
sub date($)			{ return shift()->[5]; }
