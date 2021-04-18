module biginteger

pub fn (a BigInteger) * (b BigInteger) BigInteger {
	if a.sign == .zero || b.sign == .zero {
		return zero
	} else {
		// trailing_zeros_a := a.trailing_zeros()
		// trailing_zeros_b := b.trailing_zeros()
		// if (trailing_zeros_a > 0) || (trailing_zeros_