use common::sense;
use Data::Dumper;

my %foo = (
    fugafuga => 1,
    hogehoge => 2,
);

sub hoge {
    my ($key, $value) = @_;
    my %hash = ($key => $value);

    return %hash;
}

sub fuga {
    my ($name, $label) = @_;
}

while (my ($key, $value) = each(%foo)) {
    my %hash = hoge($key, $value);

    while (my ($name, $label) = each(%hash)) {
        next if $name eq 'fugafuga';
        warn Dumper $name;
        fuga($name, $label);
    }
}

1;
