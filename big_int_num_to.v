module biginteger

pub fn (big BigInteger) int() int {
	if big.sign == .zero {
		return 0
	}

	int_val := int(big.bits[0])
	return if big.sign == .negative { -int_val } else { int_val }
}

pub fn (big BigInteger) u64() u64 {
	if big.sign == .zero {
		return 0
	}

	return get_u64(big.bits)
}

[direct_array_access]
fn get_u64(array []u32) u64 {
	if array.len == 0 {
		return 0
	}

	mut ret := u64(array[0])
	if array.len > 1 {
		ret = ret | (u