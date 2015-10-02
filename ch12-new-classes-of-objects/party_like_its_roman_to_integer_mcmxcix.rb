require "/Users/matejapopovic/Projects/learn_to_program/ch09-writing-your-own-methods/roman_numerals.rb"

def roman_to_integer roman
prop_roman = roman.upcase
numbers = (1..3000).to_a
numbers.each do |rome|
	if (prop_roman == roman_numeral(rome))
		return rome
	else
		nil
	end
	end
end

puts(roman_to_integer("l"))
puts(roman_to_integer("C"))
puts(roman_to_integer("MMDX"))
