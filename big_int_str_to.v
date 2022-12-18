module biginteger

import strings

pub fn (big BigInteger) str() string {
	if big.sign == .zero {
		return '0'
	}
	// TODO: optimize init size
	mut builder := strings.new_builder(1)
	if big.sign == .negative {
		builder.write_string('-')
	}

	base := u32(10)
	mut txt := ''

	mut bits := []u64{}
	for b in big.bits {
		bits << u64(b)
	}

	mut remainder := bits[0]
	fo