module biginteger

import strings

pub fn (big BigInteger) str() string {
	if big.sign == .zero {
		retur