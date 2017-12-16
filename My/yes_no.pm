package My::Yes_no;

use strict;
use warnings;
use My::Manual; 
use Exporter qw(import);
our @EXPORT = qw(yes_no);

sub yes_no{
	#"$_[0]prints out the prompt, eval evaluates the  arguments as perl"
	# " x ","function",print 'z' ;
	 print "$_[0]\n";
	 chomp(my $input = <>);
	if ($input =~ /y/i){
		eval $_[1]
	}
	if ($input =~ /n/i){
		eval $_[2]
	}
}
1;
