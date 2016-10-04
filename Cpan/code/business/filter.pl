use common::sense;
use Data::Dumper;

#methodを実装していく
#forで探したいキーを回して一致したらハッシュにいれてリファレンスにして返す
sub filter_keys {
    my ($data, $keys) = @_;
    my %result;
    for my $key (@$keys) {
        $result{$key} = $data->{$key}
            if exists $data->{$key};
    }
    \%result;
}

#どのようなキーならフィルターを通るのか@にして書く
my @my_keys = qw(accept_email hog);

#JSON dataを変数にして呼び出す
my $data = {
    hoge         => 'hoge',
    fuga         => 'Rfuga',
    Roge         => 'fooo',
    bara         => 'barr',
    accept_email => 1,
};

#アクセサーを書く(@をリファレンス化して渡す)
my $result = filter_keys($data, \@my_keys);

warn Dumper $result;

1;

