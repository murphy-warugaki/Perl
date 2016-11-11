use common::sense;
use Data::Dumper;

# create array
my @array;

# or
@array = ();  # @array全体に対して、クリアにするには空要素を代入してあげる

# access to array
# access patarn 1
$array[0] = 1;

# accecc to the back of the array
$array[99] = 'end';
print "$array[$#array]\n";
print "$array[-1]\n";

# the last number of array
print $#array;

# the all number of array
print scalar @array;

# about list
my ($murphy, $susumu, $chonta) = ('murphy', 'susumu', 'chonta');

# pop and push
my $accept = pop @array;    # return 'end'

my @array2;
my $accept2 = pop @array2;    # return undef

push @array, $accept;

# context
# access patarn 2
my @people = ($murphy, $susumu, $chonta);    # list context. important ()

# pattern of list
my @sorted = sort @people;                   # 3名の list context

# pattern of scalar
my $number = 42 + @people;                   # 3という数値の scalar cotest

# scalar localtime
my $time_str = localtime();                  # 日付・時刻を文字列で取得

# list localtime
my @datatime = localtime();
