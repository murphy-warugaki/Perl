use common::sense;
use Data::Dumper;

#chomp ($_ = <STDIN>);
# if(/yes/i){
# print "success!!";
#}

{
    my $names = 'Murphy or Barney';
    if ($names =~ m/(\w+) (and|or) (\w+)/) {

        # warn Dumper "I saw $1 and $2";    #$1と$2は()に反応する
    }
}

{
    my $query = {};
    $query->{id}           = 2;
    $query->{name}         = 'susumu';
    $query->{'user.age'}   = 20;
    $query->{'user.local'} = 'japan';

    for (keys %$query) {
        $_ = "fs_research." . "$_" if $_ !~ m|(\w+)[.](\w+)|;
    }

    for (my ($key, $value) = each %$query) {
        $key = "fs_research." . "$key" if $key !~ m|(\w+)[.](\w+)|;
    }
}

{
    my $row = {};
    $row->{extra_info} = '{"point":30,"point_type":"11"}';

    # m// でも //でも、どちらでも可能
    # $1がミソ！ 
    $row->{point} = $1
        if $row->{extra_info} =~ /point":([\d]+)/;
        warn Dumper $row;
}
