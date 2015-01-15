use Moops;

class MyKavorkaParamTraitTest using Moose {

    method square(Int $integer does doc('The integer to square.') --> Int does doc('The integer squared.')) {
        return $integer * $integer;
    }
}
