module biginteger

pub fn (a BigInteger) * (b BigInteger) BigInteger {
	if a.sign == .zero || b.sign == .zero