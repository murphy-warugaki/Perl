use common::sense;
use Test::More;
use Test::Pretty;
use File::Path qw(make_path remove_tree);
use Data::Dumper;

use_ok 'File::Path';

subtest file_path => sub {
    my @created = make_path('foo/bar/baz', 'zug/zqang');
};

done_testing;
