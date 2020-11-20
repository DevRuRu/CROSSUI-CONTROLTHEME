
module biginteger

import math.bits

pub fn (a BigInteger) / (b BigInteger) BigInteger {
	quotient, _ := div_mod(a, b) or { return zero }
	return quotient
}

pub fn (a BigInteger) % (b BigInteger) BigInteger {
	_, remainder := div_mod(a, b) or { return zero }
	return remainder
}

pub fn div_mod(a BigInteger, b BigInteger) ?(BigInteger, BigInteger) {
	if b.sign == .zero {
		error('Divided by zero')
	} else if a.sign == .zero {
		return zero, zero
	}
