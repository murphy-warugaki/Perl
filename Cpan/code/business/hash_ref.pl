use common::sense;
use Data::Dumper;

# 0 ) create hash_ref
our $HOGEHOGE = {
    html => 'hogehoge_html',
    json => 'hogehoge_json',
    js   => 'hogehoge_javascript',
};

my $math = {
    format  => 'json',
    command => 'RespondentMurphy'
};

my $hogehoge = $HOGEHOGE->{ $math->{format} || 'html' };

warn Dumper $hogehoge;

# リファレンスの種類は3つある
my $fuga = {key => 1};
warn Dumper ref($fuga);

my $foo = [1,2,3,4];
warn Dumper ref($foo);

my $baz = 123;
my $bizz = \$baz;
warn Dumper ref($bizz);

# hashはコピーしても、元のやつ残るんだが
# hash_refはコピーしると、元のものが消される

my $foo = {key => 1};
my $bar = $foo;
$bar->{key} = 2;
# ちなみにリストのリファレンスも同じ
}
