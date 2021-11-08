module biginteger

fn test_zero() {
	n := from_i64(0)
	assert n.str() == '0'
}

fn test_p