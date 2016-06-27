use strict;
use utf8;
use warnings;


my $a = 0;
for (sort keys %ENV){
 my $b = length($_);
 $a = $b if $b > $a;
 print "$_, $ENV{$_}\n";
}
 print "sumary, number are  $a"; #合計26個

#for (sort keys %EN1V){
# print "%-${a}s %s\n", $_, $ENV{$_};
#}
