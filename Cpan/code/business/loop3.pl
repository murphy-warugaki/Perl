use strict;
use warnings;
use utf8;

my %scores = ("nishomoto"=>100, "tanabe"=>120, "takuma"=>99);

foreach my $score (keys(%scores)){
 print "$score score is $scores{$score}\n";
}


my %each_member = ("tanaka"=>133, "nakajima"=>455, "kuroda"=>993);

for (keys %each_member){
 print "$_ san has $each_member{$_}. ";
}
