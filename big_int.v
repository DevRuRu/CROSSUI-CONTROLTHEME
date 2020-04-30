module biginteger

import math.bits

pub enum BigIntegerSign {
	negative = -1
	zero = 0
	positive = 1
}

pub struct BigInteger {
mut:
	bits []u32
pub:
	sign BigIntegerSign
}

pub fn (big BigInteger) trailing_zeros() u64 {
	if big == zero {
		return 0
	}

	mut sum := u64(0)
	for b in big.bits {
		if b == 0 {
			su