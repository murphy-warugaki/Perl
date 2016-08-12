use common::sense;
use Data::Dumper;
use Test::Exception;
use Test::More;
use Test::Pretty;

use String::CamelCase qw(camelize decamelize wordsplit);
my $class = 'String::CamelCase';

use_ok $class;
subtest Camelize => sub {
    subtest 'Nomal' => sub {
        my $camelize = camelize("some_keys");
        is $camelize, 'SomeKeys';
    };

    subtest 'Variable on decamelize' => sub {
        my $arg  = "SomeKeyword";
        my $test = decamelize($arg);
        is $test, 'some_keyword';
    };
};

done_testing;

