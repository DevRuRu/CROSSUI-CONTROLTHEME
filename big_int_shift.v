
module biginteger

pub fn (big BigInteger) lshift(d u64) BigInteger {
	if d == 0 {
		return big
	}

	d_q := d / 32
	d_r := d % 32
	mut result_bits := big.bits.clone()
	if d_q > 0 {
		for _ in 0 .. d_q {
			result_bits.prepend(0)
		}
	}
	if d_r > 0 {
		tmp_next := lshift_unsafe(mut result_bits, d_q, d_r)
		if tmp_next > 0 {
			result_bits << tmp_next
		}
	}

	return BigInteger{
		sign: big.sign
		bits: result_bits
	}
}

fn (mut big BigInteger) lshift_inner_in_place(d u64) {
	d_q := d / 32
	d_r := d % 32
	if d_q > 0 {
		for _ in 0 .. d_q {