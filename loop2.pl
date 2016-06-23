use strict;
use warnings;
use utf8;

my @tests = qw(red green blue pink);

foreach my $test (@tests){
 print "color = $test\n";
}

my @test2 = qw(nishimoto shinya murphy);
for my $test2(@test2){
 print "my name is $test2\n";
}

my @test3 = (23, 111, 99090);
 for (@test3){
   print "I like $_\n";
}
