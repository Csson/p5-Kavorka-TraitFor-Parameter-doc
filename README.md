# NAME

Kavorka::TraitFor::Parameter::doc - Document method parameters in the signature

# VERSION

Version 0.1101, released 2015-01-15.

# SYNOPSIS

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

# DESCRIPTION

Kavorka::TraitFor::Parameter::doc adds a trait (`doc`) that is useful for documenting in [Moops](https://metacpan.org/pod/Moops) classes created using [Moose](https://metacpan.org/pod/Moose).

# SEE ALSO

- [Kavorka::TraitFor::ReturnType::doc](https://metacpan.org/pod/Kavorka::TraitFor::ReturnType::doc)
- [Moops](https://metacpan.org/pod/Moops)
- [Kavorka](https://metacpan.org/pod/Kavorka)
- [Moose](https://metacpan.org/pod/Moose)

# SOURCE

[https://github.com/Csson/p5-Kavorka-TraitFor-Parameter-doc](https://github.com/Csson/p5-Kavorka-TraitFor-Parameter-doc)

# HOMEPAGE

[https://metacpan.org/release/Kavorka-TraitFor-Parameter-doc](https://metacpan.org/release/Kavorka-TraitFor-Parameter-doc)

# AUTHOR

Erik Carlsson <info@code301.com>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2015 by Erik Carlsson <info@code301.com>.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
