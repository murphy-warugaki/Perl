use strict;
use utf8;
use warnings;



my @name = qw(tanaka sakaki tanabe uchida);
=put
my $y = 2;
print "This is $name[1]";
print "Here is $name[$y-2]";
=cut

while (my ($key, $value) = each @name){
   print "$key: $value\n";
} 
