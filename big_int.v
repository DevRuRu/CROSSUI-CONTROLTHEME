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
	if big == zero 