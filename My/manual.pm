package My::Manual;

use strict;
use warnings;
use Exporter qw(import);
our @EXPORT = qw(manual);

sub manual{
	  printf"
		clear:used to clear the screen
		halt:used to exit
		search:used for looking inside or around things
		stop:used to exit
		quit:used to exit
		exit:used to exit
		man:used to open the manual
		manual: used to open the manual
		help: used to open the manual

	  the_good_word.pdf appears to be torn at the bottom\n";
	}
  1;
