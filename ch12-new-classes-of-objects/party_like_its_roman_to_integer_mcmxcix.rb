def roman_to_integer roman
  # create Hash
	roman_hash = {"M"=>1000, "D"=>500, "C"=>100, "L"=>50, "X"=>10, "V"=>5, "I"=>1}

	roman_int = 0
	prev = 0
	index = roman.length - 1
	while index >= 0
		p = roman[index].upcase
		num = roman_hash[p]
		if !num
			puts "Not a valid roman numeral. BYE!"
			return
		end
		if num < prev
			num = num*(-1)
		else
			prev = num
		end
		roman_int = roman_int + num
		index = index - 1
	end

	roman_int
end

puts roman_to_integer("mcmlxxxiii")
puts roman_to_integer("mcmxcix")
puts roman_to_integer("CCCLXV")
puts roman_to_integer("CCPQsad")