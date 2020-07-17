
module biginteger

const (
	two_pow_32         = 1 << 32
	two_pow_32_minus_1 = (1 << 32) - 1
)

pub fn (big BigInteger) negative() BigInteger {
	if big.sign == .zero {
		return big
	}

	return BigInteger{
		bits: big.bits
		sign: if big.sign == BigIntegerSign.positive {
			BigIntegerSign.negative
		} else {
			BigIntegerSign.positive
		}
	}
}

pub fn (a BigInteger) + (b BigInteger) BigInteger {
	return add(a, b)
}

pub fn add(a BigInteger, b BigInteger) BigInteger {
	if a.sign == .zero {
		return b
	} else if b.sign == .zero {
		return a
	} else if a.sign == b.sign {
		mut bits := []u32{len: 0}
		if a.bits.len > b.bits.len {
			return b + a
		} else {
			bits = add_a_b_length_asc(a.bits, b.bits)
		}

		return BigInteger{
			sign: a.sign
			bits: bits
		}
	} else {
		mut bits := []u32{len: 0}
		mut sign := BigIntegerSign.zero
		if a.bits.len >= b.bits.len {
			bits, sign = sub_a_b_length_desc(a.bits, b.bits, if a.sign == BigIntegerSign.negative {
				true
			} else {
				false
			})
		} else {
			return b + a
		}

		if sign == .zero {
			return zero
		}

		return BigInteger{
			sign: sign
			bits: bits
		}
	}
}

pub fn (a BigInteger) - (b BigInteger) BigInteger {
	return substract(a, b)
}

pub fn substract(a BigInteger, b BigInteger) BigInteger {
	if a.sign == .zero {
		return b.negative()
	} else if b.sign == .zero {
		return a
	} else if a.sign != b.sign {
		mut bits := []u32{len: 0}
		if a.bits.len >= b.bits.len {
			bits = add_a_b_length_asc(b.bits, a.bits)
		} else {
			return substract(b, a).negative()
		}

		return BigInteger{
			sign: a.sign
			bits: bits
		}
	} else {
		mut bits := []u32{len: 0}
		mut sign := BigIntegerSign.zero
		if a.bits.len == b.bits.len {
			mut swap_order := false
			for i := a.bits.len - 1; i >= 0; i-- {
				da := a.bits[i]
				dj := b.bits[i]
				if da < dj {
					swap_order = true
					break
				} else if da > dj {
					break
				}
			}
			if swap_order {
				bits, sign = sub_a_b_length_desc(b.bits, a.bits, if a.sign == BigIntegerSign.negative {
					false
				} else {
					true
				})
			} else {
				bits, sign = sub_a_b_length_desc(a.bits, b.bits, if a.sign == BigIntegerSign.negative {
					true
				} else {
					false
				})
			}
		} else if a.bits.len > b.bits.len {
			bits, sign = sub_a_b_length_desc(a.bits, b.bits, if a.sign == BigIntegerSign.negative {
				true
			} else {
				false
			})
		} else {
			return substract(b, a).negative()
		}

		if sign == .zero {