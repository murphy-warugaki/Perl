use common::sense;
use Test::More;
use Test::Pretty;
use Getopt::Long;
use Data::Dumper;

use_ok 'Getopt::Long';

subtest 'basecally usage' => sub {
    my $data;
    my $length = 24;
    my $verbose;
# carton exec -- perl % --data=option_name;で通るようになっている 
    GetOptions(
        "length=i" => \$length,    #int
        "data=s"   => \$data,      #string 引数で使える
        "verbose"  => \$verbose    #flag
    );
    die("Error in command line arguments\n") if not $data;
    is $data, 'option_name';
};

my $blob = test_func($_) for glob "code/first_perl/test.dat";

sub test_func {
    my $str = shift;
    print $str"\n";
}

done_testing;
