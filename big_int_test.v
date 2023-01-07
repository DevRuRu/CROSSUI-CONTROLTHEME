module biginteger

fn test_multiply() {
	a := from_str('12345678901234567890') or { panic('') }
	b := from_str('987654321