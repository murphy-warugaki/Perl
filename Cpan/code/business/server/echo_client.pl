use strict;
use warnings;
use Socket;

# 1. クライエント
# 1. ソケットの作成
my $sock;

socket($sock, PF_INET, SOCK_STREAM, getprotobyname('tcp')) or die "Cannnot create socket:$!";

# 2 ソケット情報の作成

# 接続先のホスト名
my $remote_host = 'localhost';
my $packed_remote_host = inet_aton($remote_host) or die "Cannot pack $remote_host:$!";

# 接続先のポート番号
my $remote_port = 9000;

# ホスト名とポート番号をパック化
my $sock_addr = sockaddr_in($remote_port, $packed_remote_host) or die "Cannot pack $remote_host:$remote_port:$!";

# 3 ソケットを使って接続
connect($sock, $sock_addr) or die "Cannot connect $remote_host:$remote_port:$!";

# 4 データの書き込み
# 書き込みバッファリングをしない
my 
