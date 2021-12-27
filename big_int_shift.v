
module biginteger

pub fn (big BigInteger) lshift(d u64) BigInteger {
	if d == 0 {
		return big
	}
