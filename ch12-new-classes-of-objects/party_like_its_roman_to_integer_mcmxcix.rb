# /usr/bin/env ruby

def roman_to_int numeral

	roman = {"i"=>1, "v"=>5, "x"=>10, "l"=>50, "c"=>100, "d"=>500, "m"=>1000}

	digit = 0
	prev = 0
	len = numeral.length - 1

	while len >= 0
		letter = numeral[len].downcase
		val = roman[letter]
		len = len - 1
		if !val
			puts "Not a Roman numeral"
			return
		else
			if val < prev
      			val = val * -1
    		else
      			prev = val
    		end
    	digit = digit + val
		end
	end
	digit
end

puts roman_to_int('mcmxcix')
puts roman_to_int('CCCLXV')