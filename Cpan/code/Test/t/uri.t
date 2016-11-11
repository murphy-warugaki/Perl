use common::sense;
use Data::Dumper;

use Test::More;
use Test::Pretty;

use URI;

my $class = 'URI';
subtest 'hoge' => sub {
use_ok $class;

    my $u1 = $class->new("http://www.perl/com");
    my $u2 = $class->new("foo", "https");
    my $string = $u2->as_string;
};
done_testing;
