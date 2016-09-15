use common::sense;
use Data::Dumper;

open( my $in, "<", "code/business/test.dat") or die("u are not open");

while (<$in>) {
    print "$_";
}

close($in);
