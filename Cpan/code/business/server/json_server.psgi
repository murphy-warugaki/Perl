use common::sense;
use Data::Dumper;
use JSON;
use Plack::Request;

my $app = sub {
    my $req = Plack::Request->new(shift);
warn Dumper $req;
    
    my $res = $req->new_response(200);
    $res->content_type('application/json');
    $res->body(encode_json(+{
        method => $req->method, # リクエストのHTTPメソッド
        query_string => $req->query_parameters->as_hashref, # GETで送信されるクエリストリング
        body_parameters => $req->body_parameters->as_hashref, # POST/PUTで送信されるボディパラメータ
        message => 'Hello JSON World', # ダミーの文字列
    }));
    
    return $res->finalize;
};
