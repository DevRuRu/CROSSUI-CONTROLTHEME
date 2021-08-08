
module biginteger

fn test_add_1() {
	a := from_str('8337839423') or { panic('') }
	b := from_str('9683495887') or { panic('') }

	assert '${b * a}' == '80739433759086953201'
}

fn test_add_2() {
	a := from_str('-8337839423') or { panic('') }