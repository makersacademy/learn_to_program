load '/Users/chukaebi/Makers_Academy/learn_to_program/ch09-writing-your-own-methods/roman_numerals.rb'

def roman_to_integer roman
  # your code here
  b = 0
  prop_roman = roman.upcase
  numbers = (1..3000).to_a
  numbers.each do |rome|
  	if (prop_roman == roman_numeral(rome))
  		b = rome
  	else
  		 nil
  	end
  end
   b
end