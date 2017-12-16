#!/bin/bash/perl -w
#HBPv.0.0.2
#this is to show the push
use strict;

use My::Clear;
use Term::ANSIColor;
use My::Yes_no;
use My::Manual;

clear();

print color('bold white');
print "Welcome to textgame!\n";

sub Bgreen { print color ('bold green');
}
Bgreen ();
sub Bred {print color ('bold red');
}
sub Bblue {
print color ('bold blue');
}
sub Byellow {
	print color ('bold yellow');
}

#Asks the player about their stats :0
print "\nYou have 10 stat points to spend:\n";
print "Use them wisely.\n";
Bblue();print"INT=0";
Bgreen();print "DEX=0";
Bred ();print "STR=0";
Byellow();print "LUK=0\n";
Bgreen();
#int, dex, str, luk, hp, mp
my $intelligence;
my $statRemaining = 10;
my $dexterity;
my $strength;
my $luck;
my $hp =10;
my $mp =10;





sub printstats{
	Bblue();print"INT=$intelligence";
	Bgreen();print "DEX=$dexterity";
	Bred();print "STR=$strength";
	Byellow();print "LUK=$luck\n";
	Bgreen();
	}


sub verifyinputstats{

	chomp($_ = <>);

	while((/\D/)||$_ < 0 or $_ > $statRemaining){
  print "You're out of range,Please enter a value between 0 and $statRemaining:";
  chomp($_ = <>);

	}
	$statRemaining -= $_;
	return $_;
}

print "How smart are you? You have $statRemaining points left:";
$intelligence = verifyinputstats();

print "How dexterous are you? You have $statRemaining points left:";
$dexterity = verifyinputstats();

print "How much strength do you have? You have $statRemaining points left:";
$strength = verifyinputstats();

print "How lucky are you? You have $statRemaining points left:";
$luck = verifyinputstats();

printstats();
my @backpack= qw(the_good_word.pdf);
print "press a key to move forward\n";
if(my $input = <>){
	clear();
}

	print "You wake up in a forest\n";
	print "After looking around you find a backpack\n";
	print "You look in the backpack and inside is the_good_word.pdf\n";
	yes_no("Would you like to read the_good_word.pdf (the manual)[y/n]?:",
	"manual","print 'You must know what you are doing...' "
	);
	print "press enter to move forth";




sub searchcontainer{
#for each element in the array you have passed to this sub, print each element
foreach (@_){
	print "$_\n";
}
}

if(my $input = <>){
	 clear();
}
my $setting= "The sun is setting, a city is in the distance about 6KM away\n";
	print "$setting";

#actionables
while (42){
	print "what do you do?\n>>";

chomp(my $input = <>);
			if ($input =~ /\Qsearch backpack\E/i){

	      searchcontainer(@backpack)
      }
			elsif ($input =~/man|manual|help/i){
				manual()
			}
      elsif ($input =~/search/i){
				print "$setting\n";
			}
			elsif ((substr $input,0,4) =~/read/i){
			if ((substr $input, -4) =~ /.pdf/i) {print "literalstring";}

			}
			elsif ($input =~/wonderful/i){
				print "No...You're wonderful! :)\n";
			}
			elsif ($input =~/dance|dances/i){
				print "You do a little dance, but ultimately nothing happens\n";
			}

			elsif ($input =~/\Qclear\E/i){
	clear() ;
 # print $clear_string;
      }
			elsif ($input =~/exit|quit|stop|halt/i ){
	      print"\nsee you soon\n";exit
      }
			elsif ($input eq "" ){}
			else { print "command unknown\n";
		}
}
