module biginteger

pub fn (a BigInteger) * (b BigInteger) BigInteger {
	if a.sign == .zero || b.sign == .zero {
		return zero
	} else {
		// trailing_zeros_a := a.trailing_zeros()
		// trail