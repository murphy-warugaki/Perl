package Specio::Role::Inlinable;

use strict;
use warnings;

our $VERSION = '0.30';

use Eval::Closure qw( eval_closure );

use Role::Tiny;

requires '_build_description';

{
    my $attrs = {
        _inline_generator => {
            is        => 'ro',
            isa       => 'CodeRef',
            predicate => '_has_inline_generator',
            init_arg  => 'inline_generator',
        },
        _inline_environment => {
            is       => 'ro',
            isa      => 'HashRef',
            lazy     => 1,
            init_arg => 'inline_environment',
            builder  => '_build_inline_environment',
        },
        _generated_inline_sub => {
            is       => 'ro',
            isa      => 'CodeRef',
            init_arg => undef,
            lazy     => 1,
            builder  => '_build_generated_inline_sub',
        },
        declared_at => {
            is       => 'ro',
            isa      => 'Specio::DeclaredAt',
            required => 1,
        },
        _description => {
            is       => 'ro',
            isa      => 'Str',
            init_arg => undef,
            lazy     => 1,
            builder  => '_build_description',
        },
    };

    ## no critic (Subroutines::ProhibitUnusedPrivateSubroutines)
    sub _attrs {
        return $attrs;
    }
}

sub can_be_inlined {
    my $self = shift;

    return $self->_has_inline_generator;
}

sub _build_generated_inline_sub {
    my $self = shift;

    my $source
        = 'sub { ' . $self->_inline_generator->( $self, '$_[0]' ) . '}';

    return eval_closure(
        source      => $source,
        environment => $self->_inline_environment,
        description => 'inlined sub for ' . $self->_description,
    );
}

sub _build_inline_environment {
    return {};
}

1;

# ABSTRACT: A role for things which can be inlined (type constraints and coercions)

__END__

=pod

=encoding UTF-8

=head1 NAME

Specio::Role::Inlinable - A role for things which can be inlined (type constraints and coercions)

=head1 VERSION

version 0.30

=head1 DESCRIPTION

This role implements a common API for inlinable things, type constraints and
coercions. It is fully documented in the relevant classes.

=for Pod::Coverage .*

=head1 SUPPORT

Bugs may be submitted through L<the RT bug tracker|http://rt.cpan.org/Public/Dist/Display.html?Name=Specio>
(or L<bug-specio@rt.cpan.org|mailto:bug-specio@rt.cpan.org>).

I am also usually active on IRC as 'drolsky' on C<irc://irc.perl.org>.

=head1 AUTHOR

Dave Rolsky <autarch@urth.org>

=head1 COPYRIGHT AND LICENSE

This software is Copyright (c) 2016 by Dave Rolsky.

This is free software, licensed under:

  The Artistic License 2.0 (GPL Compatible)

=cut