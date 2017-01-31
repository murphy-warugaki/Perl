use common::sense;
use Data::Dumper;

my @hoge = qw(hoge foo baa fooo baaaaaa);

my @foo = map { $_ } @hoge;

# warn Dumper @foo;

## create group;
my $row = {
    survey_id => 1111,
    quota_id  => 2222,
    fuoo      => 1111,
    baaa      => 3333,
};

my $row2 = {
    survey_id => 1111,
    quota_id  => 1111,
    fuoo      => 1111,
    baaa      => 3333,
};

my $test = { $row->{survey_id} => { $row->{quota_id} => [], }, };
$test->{1111}->{2222} = [$row];
warn Dumper $test;
