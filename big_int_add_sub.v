
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