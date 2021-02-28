use 5.14.0;
use strict;
use warnings;

package Kavorka::TraitFor::ReturnType::doc;

our $VERSION = '0.1105';
# ABSTRACT: Document return types in the signature
# AUTHORITY

use Moo::Role;

1;

__END__

=pod

=head1 SYNOPSIS

    # The class
    use Moops;

    class My::Class using Moose {

        method square(Int $integer --> Int does doc('The squared integer.')) {

            return $integer * $integer;

        }

    }

    # Elsewhere
    my $return_type = My::Class->meta->get_method('square')->signature->return_types->[0];
    say sprintf 'Returns an %s. %s', $return_type->type->name, $return_type->traits->{'doc'}[0];

    # says 'Returns an Int. The squared integer.'

=head1 DESCRIPTION

Kavorka::TraitFor::ReturnType::doc adds a trait (C<doc>) that is useful for documenting in L<Moops> classes created using L<Moose>.

=head1 SEE ALSO

=for :list
* L<Kavorka::TraitFor::Parameter::doc>
* L<Moops>
* L<Kavorka>
* L<Moose>

=cut
