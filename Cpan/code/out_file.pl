use strict;
use warnings;
use utf8;

open(my $here_in, "<", "test.dat") or die("u are not open");
open(my $from_here, ">", "test.out") or die("u can not wrrite");
while(<$here_in>){
 print $from_here $_;
}

close($here_in);
close($from_here);
