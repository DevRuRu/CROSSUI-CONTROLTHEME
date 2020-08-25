
module biginteger

pub fn (a BigInteger) == (b BigInteger) bool {
	if a.sign != b.sign || a.bits.len != b.bits.len {
		return false
	} else {
		for i := 0; i < a.bits.len; i++ {
			if a.bits[i] != b.bits[i] {
				return false
			}
		}
	}

	return true
}

pub fn (a BigInteger) < (b BigInteger) bool {
	return cmp(a, b) < 0