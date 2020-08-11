
module biginteger

fn test_add_1() {
	a := from_str('8337839423') or { panic('') }
	b := from_str('9683495887') or { panic('') }

	assert '${b + a}' == '18021335310'
}

fn test_add_2() {
	a := from_str('-8337839423') or { panic('') }
	b := from_str('9683495887') or { panic('') }

	assert '${b + a}' == '1345656464'
}

fn test_add_3() {
	a := from_str('8337839423') or { panic('') }
	b := from_str('-9683495887') or { panic('') }

	assert '${b + a}' == '-1345656464'