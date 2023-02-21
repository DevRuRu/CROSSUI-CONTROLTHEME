
module main

import os
import strconv
import hanabi1224.biginteger
import strings

fn main() {
	mut n := 1000
	if os.args.len > 1 {
		n = strconv.atoi(os.args[1]) or { n }
	}

	digits_to_print := n
	mut digits_printed := 0