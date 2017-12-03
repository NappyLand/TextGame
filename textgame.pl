#!/bin/bash/perl -w
#HBPv.0.0.2
#this is to show the push 
use strict;
#clears the screen to start the program
my $clear_string = `clear`;
print "$clear_string";
#Asks the player about their stats :0

print "\nYou have 10 stat points to spend:\n";
print "Use them wisely.\n";
print "INT=0,DEX=0,STR=0,LUK=0\n";
#int, dex, str, luk, hp, mp
my $intelligence;
my $statRemaining = 10;
my $dexterity;
my $strength;
my $luck;
my $hp =10;
my $mp =10;

sub printstats{
	print "INT=$intelligence,DEX=$dexterity,STR=$strength,LUK=$luck\n";
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
my @backpack= qw(frog dog smog);
print "press a key to move forward\n";
if(my $input = <>){
	print $clear_string;
}

	print "You wake up in the forest, your clothing is missing besides your underwear\n";
	print "You have a backpack.\n";
	print "You can search by typing the word search followed by what it is you want to look at ex. search backpack\n";
	print "press enter to move forth";

sub searchcontainer{
#for each element in the array you have passed to this sub, print each element
foreach (@_){
	print "$_\n";
}
}

if(my $input = <>){
	print $clear_string;
}
my $setting= "The sun is setting the city is in the distance about 6KM away\n";
	print "$setting";

while (42){
	print "what do you do?\n>>";
chomp(my $input = <>);
			if ($input =~ /\Qsearch backpack\E/){

	searchcontainer(@backpack)
}
			if ($input =~/\Qclear\E/){
	print $clear_string;
}
			if ($input =~/exit|quit|stop|halt/ ){
	print"\nsee you soon\n";exit
}
}
