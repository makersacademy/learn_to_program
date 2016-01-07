roman_numbers = {
  	1000 => "M",
  	900 => "CM",
  	500 => "D",
  	400 => "CD",
  	100 => "C",
  	90 => "XC",
  	50 => "L",
  	40 => "XL",
  	10 => "X",
  	9 => "IX",
  	5 => "V",
  	4 => "IV",
  	1 => "I",
  }

def roman_to_integer(letter)
  	number = self
  	roman = ''
  	roman_numbers.each do |value, letter|
  		roman << letter * (number /value)
  		number = number % value
  	end
  	return roman_numbers
end

puts roman_to_integer('MCMCIX')

# spent way too long on this - explored all following options, couldn't get any to work!!
# will revisit... completely confused myself on this one...

#   	def roman_to_integer(number)
#   		number = self
#   		roman_numbers.map do |letter, value|
#   			amount, number = number.divmod(value)
#   			letter * amount
#   		end.join
#   	end

# end

# def roman_to_integer(roman)
# 	roman_numbers = Array.new(num) do |index|
# 		target = index + 1
# 		roman_numbers.keys.sort {|a, b| b <=> a}.inject('') do |roman, div| 
# 			times, target = target = target.divmod(div)
# 			roman << roman_numbers[div] * times
# 		end

# 	end
# end

	# def roman_to_integer
	# 	number = self
	# 	roman = ''
	# 	roman_numbers.each do | value, letter|
	# 		roman << letter*(number/value)
	# 		number = number % value
	# 	end
	# 	return roman
	# end

# 	number = self
# 	roman = ''
# 	roman_numbers.each do |value, letter|
# 	  	roman << letter * (number / value)
# 	  	number = number % value
# 	end
# 	return roman
 
# end

