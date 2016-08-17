package Test::T::Moo;
use common::sense;
use Data::Dumper;
use Test::More;
use Test::Pretty;

use Moo;

my $class = 'Moo';
use_ok $class;

sub feed_lion {
    my $self = shift;
    my $amount = shift || 1;

    $self->pounds($self->pounds - $amount);
}

has taste => (is => 'ro',);
has brand => (
    is  => 'ro',
    isa => sub {
        die "Only SWEET-TREATZ supported!" unless $_[0] eq 'SWEET-TREATZ';
    },
);

has pounds => (
    is  => 'rw',
    isa => sub {
        die "$_[0] is too much cat food!" unless $_[0] < 15;
    },
);
1;

subtest tutorial => sub {
    my $full = Test::T::Moo->new(
        taste  => 'DELICIOUS',
        brand  => 'SWEET-TREATZ',
        pounds => 10,
    );
    is $full->feed_lion, 9;
    is $full->pounds, 9;  # feed_lionで$self->poundsが一度呼ばれているから9
};

done_testing;

