use 5.14.0;
use strict;
use warnings;

package Kavorka::TraitFor::ReturnType::doc;

# VERSION
# ABSTRACT: Document method parameters in the signature

use Moo::Role;

1;

__END__

=pod

=head1 SYNOPSIS

    # The class
    use Moops;

    class My::Class using Moose {

        method square(Int $integer does doc('The integer to square.')) {
            return $integer * $integer;
        }

    }

    # Elsewhere
    my $param = My::Class->meta->get_method('square')->signature->params->[1];
    say sprintf '%s %s. %s', $param->optional ? 'Optional' : 'Required',
                             $param->type->name,
                             $param->traits->{'doc'}[0];

    # says 'Required Int. The integer to square.'

=head1 DESCRIPTION

Kavorka::TraitFor::Parameter::doc adds a trait (C<doc>) that is useful for documenting in L<Moops> classes created using L<Moose>.

=head1 SEE ALSO

=for :list
* L<Moops>
* L<Kavorka>
* L<Moose>

=cut
