use strict;    #宣言した変数以外を使うとエラー
use warnings;
use Data::Dumper;
use Test::More;    #テストを実行
use Test::Pretty;

=pod
ここはコメントアウト
=cut

ok 1 == 1, '1 is 1';

is add(1, 2), 3;
is add(2, 3), 5;
is add(1, 2, 3), 6;

sub add {
    my $res = 0;
    for my $i (@_) {
        $res += $i;
    }
    $res;
}

my $test  = test("hey");
my $test2 = test("hello");

isa_ok $test, 'CODE';

$test->("murphy"),   'hey murphy';
$test2->("Abe-san"), 'hello Abe-san';

sub test {
    my $first = shift;
    sub {
        my $name = shift;

        #my $first = shift;
        print "$first $name";
    };
}

my $from_date = 1;
my $to_date = $from_date + 1;
is $from_date, 1;
is $to_date, 2;
done_testing;
