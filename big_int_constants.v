module biginteger

pub const (
	zero = BigInteger{
		sign: .zero
		bits: [u32(0)]
