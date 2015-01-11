use Moops;

class Kavorka::TraitFor::Parameter::MyKavorkaParamTraitTest using Moose {

    has an_attr => (
        is => 'ro',
        isa => Int,
    );
    

    method square(Int $integer does doc('The integer to square.')) {
        return $integer * $integer;
    }
}

__END__

=pod

:pinter :classname Kavorka::TraitFor::Parameter::MyKavorkaParamTraitTest

:pinter :attributes

=head1 SYNOPSIS

    # The class
    use Moops;

    class My::Class using Moose {

        method tester(Int $integer does doc('This does something important.')) {
            return $integer;
        }

    }

    # Elsewhere
    my $param = My::Class->meta->get_method('do_something')->signature->params->[1];
    say sprintf '%s %s. %s', $param->optional ? 'Optional' : 'Required',
                             $param->type->name,
                             $param->traits->{'doc'}[0];

    # says 'Required Int. This does something important.'

=head1 DESCRIPTION

Kavorka::TraitFor::Parameter::doc adds a trait (C<doc>) that is useful for documenting in L<Moops> classes created using L<Moose>.

=head1 SEE ALSO

=for :list
* L<Moops>
* L<Kavorka>
* L<Moose>

=cut
