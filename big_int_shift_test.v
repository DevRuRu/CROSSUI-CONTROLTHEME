module biginteger

fn test_lshift() {
	for a in [i64(-777), 777] {
		a_big := from_i64(a)
		assert a.str() == a_big.str()
		for i in 0 .. 32 {
			assert (a << i).str() == a_big.lshift(u64(i)).str()
		}
	}
}

fn test_lshift_big() {
	a := from_str('12_345_678_901_234_567_890') or { panic('') }
	assert a.lshift(2).str() == '49382715604938271560'
	as