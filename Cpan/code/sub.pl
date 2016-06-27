use strict;
use utf8;
use warnings;


sub max{
 my $num = $_[0];
 if($_[1] > $num) {
   $num = $_[1];
}
   return $num
}

print max(817,12);
