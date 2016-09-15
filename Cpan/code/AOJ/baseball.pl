use common::sense;
use Data::Dumper;

open( my $in, "<", "code/AOJ/sugiyama.dat") or die("u are not open");

my $out;
my $hit;
my $homuran;
my $inings;

while (<$in>) {
    print "$_";
}

close($in);
