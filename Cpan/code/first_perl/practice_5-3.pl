use strict;
use warnings;
use utf8;

open(my $in, "<", "test.dat") or die("could not open file.");

while (<$in>) {
    if (/[.]/) {
        print $_;
    }
}

close($in);