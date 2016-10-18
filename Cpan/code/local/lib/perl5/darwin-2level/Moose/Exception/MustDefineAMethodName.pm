package Moose::Exception::MustDefineAMethodName;
our $VERSION = '2.1806';

use Moose;
extends 'Moose::Exception';
with 'Moose::Exception::Role::Instance';

sub _build_message {
    "You must define a method name";
}

1;
