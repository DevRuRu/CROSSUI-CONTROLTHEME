module biginteger

pub const (
	zero = BigInteger{
		sign: .zero
		bits: [u32(0)]
	}
	one = BigInteger{
		sign: .positive
		bits: [u32(1)]
	}
	minus_one = BigInteger{
		sign: .negative
		bits: [u32(1)]