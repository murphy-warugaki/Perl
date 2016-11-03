use strict;
use warnings;
use Socket;

# 0 ) クライエント側の実装
# クライエントがHelloと送ると、サーバーがその文字列にecho:という文字列を追加してクライエントに返すプログラム

# 1 ) ソケットの作成
my $sock;

# socket関数：ソケットをオープンにして、ファイルハンドルに結びつける。(domain:ソケットのネットワークドメイン, type:ストリームかダイアグラム, プロトコル番号)
# ソケットにはストリームソケット(TCP)/ダイアグラムソケット(UDP)がある。cuz getprotobynameでTCPプロトコルを洗濯してりう
socket($sock, PF_INET, SOCK_STREAM, getprotobyname('tcp')) or die "Cannnot create socket:$!";
# インターネットドメインの場合:PF_INET, UNIXドメインの場合:PF_UNIX

# 2 ) ソケット情報の作成

# connectでソケットつなぐんやけど、接続先のアドレスとポード番号が必須だよね。先にそれを作りましょう。

# 2-1 ) 接続先のホスト名
my $remote_host = 'localhost';
# inet_aton:指定したアドレスを4バイトのアドレス文字列に変換する。ホスト名が解決できない場合はundef
my $packed_remote_host = inet_aton($remote_host) or die "Cannot pack $remote_host:$!";

# 2-2 ) 接続先のポート番号
my $remote_port = 9000;

# ホスト名とポート番号をパック化
my $sock_addr = sockaddr_in($remote_port, $packed_remote_host)
    or die "Cannot pack $remote_host:$remote_port:$!";
# 指定したポート番号/アドレスをpackする。ソケットアドレス構造体を返す。

# 3 ソケットを接続し、コネクションを確立する。
# connect(socket:ファイルハンドル, address:ソケットタイプ別にパックされたネットワークアドレス)
connect($sock, $sock_addr) or die "Cannot connect $remote_host:$remote_port:$!";

# 4 データの書き込み
# 書き込みバッファリングをしない
my $old_handle = select $sock;
$| = 1;
select $old_handle;

print $sock "Hello";

# 書き込みを終了する
# 引数の番号によって、シャットダウン方法が違う
# (SOCKET, 0:reading 1:writing 2:using socket)
shutdown $sock, 1;

# 5 ) データの読み込み
while (my $line = <$sock>) {
    print $line;
}

# 6 ) ソケットを閉じる
close $sock;

