module biginteger

fn test_multiply() {
	a := from_str('12345678901234567890') or { panic('') }
	b := from_str('98765432109876543210') or { panic('') }

	assert '${a * b}' == '1219326311370217952237463801111263526900'
}

fn test_mult1() {
	a := from_str('12345678901234567890') or { panic('') }
	b := from_str('281474976710656') or { panic('') }

	assert '${a * b}' == '3474999681202237152443873718435840'
}

fn test_mult2() {
	a := from_str('12345678901234567890') or { panic('') }
	// b := from_str('281474976710656') or { panic('') }

	assert '${a.lshift(48)}' == '3474999681202237152443873718435840'
}

fn test_mult3() {
	mut a := from_str('12345678901234567890') or { panic('') }
	a = a.lshift(2)
	mut b := from_str('2814749