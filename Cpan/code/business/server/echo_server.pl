use strict;
use warnings;

use Socket;

# サーバーサイド

# 1 ) 受付用のソケット作成
my $sock_receive;
socket($sock_receive, PF_INET, SOCK_STREAM, getprotobyname('tcp'))
    or die "Can not create socket: $!";

# 2 ) 受付用ソケット情報の作成
my $local_port = 9000;

my $pack_addr = sockaddr_in($local_port, INADDR_ANY);

# 3 ) 受付用ソケットと受付用ソケット情報を結びつける
bind($sock_receive, $pack_addr) or die "Can not bind: $!";

# 4 ) 接続を受付る準備をする
listen($sock_receive, SOMAXCONN) or die "Can not listen:$!";

# 5 ) 接続を受付て応答する
my $sock_client;    # クライエントとの通信ソケット

while (accept($sock_client, $sock_receive)) {
    my $content;

    # クライエントからのデータの読み込み
    while (my $line = <$sock_client>) {
        $content .= $line;
    }

    # クライエントへのデータの書き込み
    print $sock_client "echo: $content";
    close $sock_client;
}
