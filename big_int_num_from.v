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
		return from_u64_and_sign(u64(-i), BigIntegerSign.negative)
	} else {
		return from_u64_and_sign(u64(i), BigIntegerSign.positive)
	}
}

pub fn from_u32(i u32) BigInteger {
	return from_u64(i)
}

pub fn from_u64(i u64) BigInteger {
	return from_u64_and_sign(i, BigIntegerSign.positive)
}

pub fn from