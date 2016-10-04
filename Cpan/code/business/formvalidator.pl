use common::sense;
use $v = FormValidator::Lite->nwe(1);

my $y_name    = $self->name . '_y';
my $m_name    = $self->name . '_m';
my @y_choices = $self->choises->{$y_name}{choices};

$t->check(
    $y_name => [ [ CHOICE => @$y_choices ], ],
    $m_name => [ 'NOT_NULL', 'NUMBER', ],
);

my $y_name    = $self->name . '_y';
my $y_choices = $self->choices->{$y_name}{choices};

my @to_check  = (
    $y_name => [ [ CHOICE => @$y_choices ], ],
    { $self->name => [ map { join('_', $self->name, $_) } qw( y m d ) ] } =>
        [ 'NOT_NULL', 'DATE', ],
);

