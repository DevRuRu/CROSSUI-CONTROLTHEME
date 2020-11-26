
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

	if a.sign != b.sign {
		if a.sign == .negative {
			quotient, remainder := div_mod(a.negative(), b) ?
			return quotient.negative(), remainder.negative()
		} else {
			quotient, remainder := div_mod(a, b.negative()) ?
			return quotient.negative(), remainder
		}
	}

	negative := a.sign == .negative
	a_pos := if negative { a.negative() } else { a }
	b_pos := if negative { b.negative() } else { b }

	mut quotient := zero
	mut remainder := zero

	quotient, remainder = div_mod_inner(a_pos, b_pos)

	if negative {
		remainder = remainder.negative()
	}

	return quotient, remainder
}

fn div_mod_inner(a_pos BigInteger, b_pos BigInteger) (BigInteger, BigInteger) {
	cmp_result := cmp(a_pos, b_pos)