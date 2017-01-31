package SomeModule;
use common::sense;

sub new {
	my ($class, %args) = @_;
	bless \%args, $class;
}

sub sum {
	my $self = shift;
	my $ret = 0;
	for (@_){
		$ret += $_;
	}
	return $ret;
}


1;
