Numerals = {
	1000 => 'M',
	900 => 'CM',
	500 => 'D',
	400 => 'CD',
	100 => 'C',
	90 => 'XC',
	50 => 'L',
	40 => 'XL',
	10 => 'X',
	9 => 'IX',
	5 => 'V',
	4 => 'IV',
	1 => 'I'
}

def roman_numeral number
	string = ''

	Numerals.collect do |num, roman|
		# How many times does the number fit?
    string << roman * (number / num)

		# Update number with remainder
    number %= num
  end

	string
end
