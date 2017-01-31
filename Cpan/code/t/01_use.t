use common::sense;

use Test::More;
use Test::Pretty;
use Data::Dumper;

use_ok('SomeModule');

subtest 'no args' => sub {
	my $obj = SomeModule->new;
	warn Dumper $obj;
	isa_ok $obj, 'SomeModule';
};

subtest 'foo=>bara' => sub {
	my $obj = SomeModule->new(foo => 'baa');
	warn Dumper $obj;
	isa_ok $obj, 'SomeModule';
};

subtest 'include undef' => sub {
	my $got = SomeModule::sum(1,2,3);
	is $got, 5;
};


subtest 'basic' => sub {
	my $obj = SomeModule->new;
	my $got = $obj->sum(2,3);
	is $got, 5;
};


done_testing;

