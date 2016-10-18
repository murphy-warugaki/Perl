package Moose::Exception::RolesDoNotSupportAugment;
our $VERSION = '2.1806';

use Moose;
extends 'Moose::Exception';

sub _build_message {
    "Roles cannot support 'augment'";
}

1;
