use strict;
use warnings;
use utf8;

open(my $in, "<", "test.dat") or die("could not open file.");

while (<$in>) {
    if (/(\S)\1/) {
        print $_;
    }
}

close($in);
