use common::sense;
use Data::Dumper;
use Test::More;
use Test::Pretty;
use File::Temp qw(tempfile :mktemp);

subtest 'tempfile' => sub {
    my ($fh, $file_name) = tempfile();
    ok $fh;
    warn Dumper $fh;
};


done_testing;
