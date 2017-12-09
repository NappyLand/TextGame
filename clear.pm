package clear.pm;

use strict;
use Exporter;
use vars qw($VERSION @ISA @EXPORT @EXPORT_OK %EXPORT_TAGS);

$VERSION     = 1.00;
@ISA         = qw(Exporter);
@EXPORT      = ();
@EXPORT_OK   = qw(func1);
%EXPORT_TAGS = ( DEFAULT => [qw(&func1)],
                # Both    => [qw(&func1 &func2)]);
my $clear_string = `clear`
sub clear  { print "$clear_string"; }
#sub func2  { return map{ uc }@_ }

1;
