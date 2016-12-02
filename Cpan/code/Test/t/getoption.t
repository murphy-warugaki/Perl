use common::sense;
use Test::More;
use Test::Pretty;
use Data::Dumper;

use Getopt::Long;
use_ok 'Getopt::Long';

subtest 'basecally usage' => sub {
    my $data = "hogehoge.dat";
    my $length = 24;
    my $verbose;

    # carton exec -- perl % --data=file_name;で通るようになっている
    my $test = GetOptions(
        "length=i" => \$length,    #int
        "data=s"   => \$data,      #string 引数で使える
        "verbose"  => \$verbose    #flag
    );
    die("Error in command line arguments\n") if not $data;
warn Dumper $test;
    ok $test;
};

my $blob = test_func($_) for glob "../code/first_perl/test.dat";

sub test_func {
    my $str = shift;
    print $str"\n";
}

done_testing;
