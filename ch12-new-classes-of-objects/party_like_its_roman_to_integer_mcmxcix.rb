load '/Users/amyyang/Projects/learn_to_program/ch09-writing-your-own-methods/roman_numerals.rb'

def roman_to_integer roman

	capital = roman.upcase
	numbers = (1..5000).to_a 

	numbers.each do |integer|
		if capital == roman_numeral(integer)
			#if capitalized roman equal output of roman number with roman_numerals method 
			return integer 
		else 
			nil 
		end 
	end
end

puts roman_to_integer 'mcmxcix'

