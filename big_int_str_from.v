module biginteger

pub fn from_str(str string) ?BigInteger {
	base := ten
	// Validate with regex, allowing _ and ,
	char_code_0 := '0'[0]
	char_code_underscore := '_'[0]
	char_code_comma := ','[0]
	char_code_minus := '-'[0]
	mut digits := []byte{}
	negative := if str[0] == char_co