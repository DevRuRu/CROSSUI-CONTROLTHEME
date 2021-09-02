module biginteger

pub fn from_i8(i i8) BigInteger {
	return from_i64(i)
}

pub fn from_int(i int) BigInteger {
	return from_i64(i)
}

pub fn from_i64(i i64) BigInteger {
	if i == 0 {
		return from_u64_and_sign(0, BigIntegerSign.zero)
	} else if i < 0 {
		return from_u64_and_sign(u64(-