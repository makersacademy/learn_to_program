def roman_to_integer roman
  
numerals = { "i" => 1,
	     "v" => 5,
	     "x" => 10,
	     "l" => 50,
	     "c" => 100,
	     "d" => 500,
	     "m" => 1000 }

number = roman.downcase
total = 0 
previous = 0

idx = number.length-1

while idx >= 0 
	n = number[idx] 
	idx -= 1
	value = numerals[n]
	puts "Not a valid Roman numeral" if !value

	if value < previous
	value = value * -1
	else previous = value
	end

	total = total + value
end

return total

end

puts roman_to_integer("ccclxv")
