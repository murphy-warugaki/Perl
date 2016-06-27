use strict;
use warnings;
use utf8;


sub max {
  my $in = shift(@_);
foreach (@_){
  $in = $_ if $_ > $in;
}
  $in;
}
print max(11, 54, 100, 200);
