module biginteger

pub fn from_str(str string) ?BigInteger {
	base := ten
	// Validate with regex, allowing _ and ,
	ch