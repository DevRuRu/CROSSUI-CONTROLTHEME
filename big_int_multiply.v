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
		array_cap := int(a_len + b_len)
		mut bits := []u32{len: array_cap}
		multiply_unsafe(mut bits, a.bits, b.bits)
		trim_msb_zeros(mut bits)

		return BigInteger{
			sign: if negative { BigIntegerSign.negative } else { BigIntegerSign.positive }
			bits: bits
		}
	}
}

[direct_array_access]
fn multiply_unsafe(mut bits []u32, a []u32