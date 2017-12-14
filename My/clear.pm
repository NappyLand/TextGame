package My::Clear;

use strict;
use warnings;
use Exporter qw(import);
our @EXPORT = qw(clear);
#my $clear_strings = `clear`;

sub clear{
my $clear_strings = `clear`;
 print "$clear_strings"; }
1;
