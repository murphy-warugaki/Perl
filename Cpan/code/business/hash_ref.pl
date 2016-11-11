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
