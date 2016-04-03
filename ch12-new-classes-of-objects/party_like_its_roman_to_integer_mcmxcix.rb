def roman_to_integer roman

	hash = {
	"M" => 1000,
	"D" => 500,
	"C" => 100,
	"L" => 50,
	"X" => 10,
	"V" => 5,
	"I" => 1,
	}

hash[roman.upcase]



end

# Party like it’s roman_to_integer 'mcmxcix'! Come on, you knew 
# it was coming, didn’t you? It’s the other half of your roman_numeral 
# 1999 method. Make sure to reject strings that aren’t valid Roman numerals.

# def old_roman_numeral num

# key = {
# 1000  => "M",
# 500   => "D",
# 100   => "C",
# 50    => "L",
# 10    => "X",
# 5     => "V",
# 1 	=> "I",
# }

# numerals = ""

# key.each do |n, r|
# 	numerals += r * (num/n)
# 	num = num % n
# 	end
# 	numerals
# end