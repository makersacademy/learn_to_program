Numerals = {
	'CM' => 900,
	'CD' => 400,
	'XC' => 90,
	'XL' => 40,
	'IX' => 9,
	'IV' => 4,
	'M' => 1000,
	'D' => 500,
	'C' => 100,
	'L' => 50,
	'X' => 10,
	'V' => 5,
	'I' => 1
}

def roman_to_integer roman
	roman.upcase!
	count = 0

	# Invalid roman numeral checker
	# There's probably better way of doing this
	roman.each_char do |char|
		if Numerals[char] == nil
			puts 'NO. Your roman numeral sucks.'
			return
		end
	end

	Numerals.each do |key, val|
		roman.scan(key).length.times do
			count += val
			roman.sub!(key, '')
		end
  end

	count
end

# p roman_to_integer 'mcmxcix' # => 1999
# p roman_to_integer 'CCCLXV' # => 365
# p roman_to_integer 'fdsC' # => No chance m8
