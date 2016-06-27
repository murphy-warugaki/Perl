use common::sense;
use Test::Mock::Guard qw(mock_guard);
use Test::More;
use Test::Pretty;

package Some::Class;
#my $class = "Some::Class";
#my $task = $class->new;

sub new{  bless {} => shift }
sub foo{ "foo" }
sub bar{ 1; }

package main;

{
	my $guard = mock_guard( 
			'Some::Class',
			{ foo => sub{"bar"}, bar => 10 }
			);
	my $obj = Some::Class->new;
	is ( $obj->foo, "bar" );
	is ( $obj->bar, 10 );
}

my $obj = Some::Class->new;
is ( $obj->foo, "foo" );
is ( $obj->bar, 1 );


done_testing;
