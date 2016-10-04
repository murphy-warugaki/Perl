use common::sense;
use Data::Dumper;
use Mojo::URL;

my $url = Mojo::URL->new('http://hoge:fuubar@rinrin.com:300/foo/bar?foo=bar#partner_app_id=1');
warn Dumper $url->fragment;
warn Dumper $url->query;
