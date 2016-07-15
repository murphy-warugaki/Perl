use common::sense;

use Test::More;
use Test::Pretty;

use Getopt::Long;

subtest 'basecally usage' => sub {
    my $data   = "file.dat";
    my $length = 24;
    my $verbose;

    GetOptions(
        "length=i" => \$length,    #int
        "file=s"   => \$data,      #string
        "verbose"  => \$verbose    #flag
    ) or die("Error in command line arguments\n");

};
