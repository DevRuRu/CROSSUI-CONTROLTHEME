
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
	mut k := biginteger.one
	mut n1 := biginteger.four
	mut n2 := biginteger.from_int(3)
	mut d := biginteger.one
	mut u := biginteger.zero
	mut v := biginteger.zero
	mut w := biginteger.zero
	one := biginteger.one
	two := biginteger.two
	ten := biginteger.ten