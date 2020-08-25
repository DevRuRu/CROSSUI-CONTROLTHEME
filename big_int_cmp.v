
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
}

pub fn cmp(a BigInteger, b BigInteger) int {
	if b.sign == .positive {
		if a.sign == .positive {
			return cmp_bits(a.bits, b.bits)
		} else {
			return -1
		}
	} else {