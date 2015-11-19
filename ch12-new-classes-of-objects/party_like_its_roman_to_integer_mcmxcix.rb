require '/Users/DanielaG/Desktop/Makers Academy/Week 3/learn_to_program/ch09-writing-your-own-methods/roman_numerals.rb'

def roman_to_integer input
	cap_input = input.upcase

	numbers = (1..2000).to_a 
	numbers.each do |integer|
		if (cap_input == roman_numeral(integer))
			return integer
		else
			nil
		end
	end
end

