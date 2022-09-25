module biginteger

fn test_from_str_neg_zero() {
	n := from_str('-0') or { panic('') }
	assert n.str() == '0'