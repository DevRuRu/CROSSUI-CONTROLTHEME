module biginteger

pub fn from_str(str string) ?BigInteger {
	base := ten
	// Validate with regex, allowing _ and ,
	char_code_0 := '0'[0]
	char_code_underscore := '_'[0]
	char_code_comma := ','[0]
	char_code_minus := '-'[0]
	mut digits := []byte{}
	negative := if str[0] == char_code_minus { true } else { false }
	digits_str := if negative { str[1..] } else { str }
	for char_code in digits_str {
		if char_