use strict;
use warnings;
use common::sense;
use Data::Dumper;
use Socket;
use JSON;
use Plack::Request;

# Socketモジュールをインポート

# 0 ) サーバーサイド
# クライエントから受け取った文字列にecho:という文字列を加えてクライエントに返すプログラム

# 1 ) 受付用のソケット作成
my $sock_receive;
socket($sock_receive, PF_INET, SOCK_STREAM, getprotobyname('tcp'))
    or die "Can not create socket: $!";

# 2 ) 受付用ソケット情報の作成
my $local_port = 9000;

# ネットワークアドレスを作成
my $pack_addr = sockaddr_in($local_port, INADDR_ANY);

# sockaddr_in(port_number:same as client, address:ローカルホストを指定=INADDR_ANY)

# 3 ) 受付用ソケットと受付用ソケット情報を結びつける
# bind:作成したソケットをローカルマシン上のポートにバインドする。
bind($sock_receive, $pack_addr) or die "Can not bind: $!";

# 4 ) 接続を受付る準備をする。OSへの通知と待ち行列の最大数設定

# listern:指定したソケットでコネクションを受けつけることをOSに伝える。OSに対して「ポートに接続してきたクライエントとのコネクションを確立しておいて」と命令している。
# サーバープロセスをlisten状態に移行させる。
# 第2引数で複数のクライエントが同時に接続要求してきた時の待ち行列の最大数を指定。
listen($sock_receive, SOMAXCONN) or die "Can not listen:$!";

# 5 ) 接続を受付て応答する
my $sock_client;    # クライエントとの通信ソケット

# accept:クライエントからのソケット接続を受け付ける。
while (accept($sock_client, $sock_receive)) {
    my $content;

    # クライエントからのデータの読み込み
    while (my $line = <$sock_client>) {
        say $line;
        $content .= $line;
    }

    # クライエントへのデータの書き込み
    print $sock_client "HTTP/1.0 404 Not Found", Socket::CRLF;
    print $sock_client Socket::CRLF;
    print $sock_client "<html><body>404 Not Found</body></html>";
    close $sock_client;
}
