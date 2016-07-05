use common::sense;
#コマンドラインに指定されたファイル名リスト受け取って、chmodを見れるプログラムを書く

foreach my $file (@ARGV){
	my $attribs = attributes($file);
	print "'$file' $attribs.\n";
}

