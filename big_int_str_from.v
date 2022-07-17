module biginteger

pub fn from_str(str string) ?BigInteger {
	base := ten
	// Validate with regex, allowing _ and ,
	char_code_0 := '0'[0]
	char_code_underscore := '_'[0]
	char_code