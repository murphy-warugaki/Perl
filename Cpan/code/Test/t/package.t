package Hoge::Fuga;
use common::sense;
use Data::Dumper;
use Test::More;
use Test::Pretty;

subtest basic => sub {
    my $package = __PACKAGE__;
    is $package, 'Hoge::Fuga';
};

done_testing;
