module biginteger

fn test_lshift() {
	for a in [i64(-777), 777] {
		a_big := from_i64(a)
		assert a.str() == a_big.str()
		for i in 0 .. 32 {
			assert (a << i).str() == a_big.lshift(