use strict;
use warnings;
use utf8;

open(my $in, "<", "test.dat") or die("could  not open file.");

while(<$in>){ 
$_ =~ s/abc/ABC/;
if ($_ =~ /[a-z]/){
print $_;
}
}

close($in);
