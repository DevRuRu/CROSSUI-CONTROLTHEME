module biginteger

pub fn (a BigInteger) * (b BigInteger) BigInteger {
	if a.sign == .zero || b.sign == .zero {
		return zero
	} else {
		// trailing_zeros_a := a.trailing_zeros()
		// trailing_zeros_b := b.trailing_zeros()
		// if (trailing_zeros_a > 0) || (trailing_zeros_b > 0) {
		// 	trailing_zeros := trailing_zeros_a + trailing_zeros_b
		// 	return (a.rshift(trailing_zeros_a) * b.rshift(trailing_zeros_b)).lshift(trailing_zeros)
		// }

		a_len := a.bits.len
		b_len := b.bits.len

		negative := a.sign != b.sign
		array_c