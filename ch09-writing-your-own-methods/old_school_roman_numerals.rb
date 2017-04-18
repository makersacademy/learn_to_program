Numerals = {
	1000 => 'M',
	500 => 'D',
	100 => 'C',
	50 => 'L',
	10 => 'X',
	5 => 'V',
	1 => 'I'
}

def old_roman_numeral number
	string = ''

	Numerals.collect do |num, roman|
		# How many times does the number fit?
    string << roman * (number / num)

		# Update number with remainder
    number %= num
  end

	string
end
