
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