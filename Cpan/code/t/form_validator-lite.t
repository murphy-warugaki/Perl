use common::sense;
use Data::Dumper;
use Test::More;
use Test::Pretty;

my $class = 'FormValidator::Lite';
use_ok $class;

$class->load_constraints(qw(Number));
 
 subtest NUMBER => sub {
     subtest 'OK' => sub {
         my $validator = $class->new({ month => 1 });
         $validator->check(month => ['NOT_NULL', [ BETWEEN => qw(1 12) ] ],);
         ok $validator->is_valid;
     };
     subtest 'NG' => sub {
         my $validator = $class->new({ month => 15 });
         $validator->check(month => [ 'NOT_NULL',[ BETWEEN => qw(1 12) ] ],);
         ok !$validator->is_valid;
         is_deeply $validator->errors, { month => { BETWEEN => 1, }, };
     };
 
     subtest 'OK: with 0 prefix' => sub {
         my $validator = $class->new({ month => 01 });
         $validator->check(month => [ [ BETWEEN => qw(1 12) ] ],);
 
         ok $validator->is_valid;
     };
 };

subtest NOT_NULL => sub {
	my $validator = $class->new({});
	$validator->check(
			month => [qw(NOT_NULL)],
			);

	ok !$validator->is_valid;
	warn Dumper $validator->errors;
};
 
 done_testing;
