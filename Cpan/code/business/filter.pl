use common::sense;
use Data::Dumper;

sub filter_keys {
    my ($data, $keys) = @_;
    my %result;

    for my $key (@$keys) {
        $result{$key} = $data->{$key}
            if exists $data->{$key};
    }
    \%result;
}

my $data = {
    hoge         => 'hoge',
    fuga         => 'Rfuga',
    Roge         => 'fooo',
    bara         => 'barr',
    accept_email => 1,
};

my @my_keys = qw( accept_email hoge);

my $result = filter_keys($data, \@my_keys);

test($result);

sub test {
    my $question = shift;
    warn Dumper $question;
}

1;

