use Moops;

class MyKavorkaParamTraitTest using Moose {

    method square(Int $integer does doc('The integer to square.')) {
        return $integer * $integer;
    }
}

