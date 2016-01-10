require_relative '../ch09-writing-your-own-methods/roman_numerals.rb'
class Integer
	def factorial
		value = self.to_i #use self because I'm calling a method within the object itself.
		return (1..value).to_a.reduce(:*)
	end

	def to_roman
		value = self.to_i
		roman = ''
        roman = roman + 'M' * (value / 1000)
        roman = roman + 'D' * (value % 1000 / 500)
        roman = roman + 'C' * (value % 500 / 100)
 		roman = roman + 'L' * (value % 100 / 50)
 		roman = roman + 'X' * (value % 50 / 10)
 		roman = roman + 'V' * (value % 10 / 5)
 		roman = roman + 'I' * (value % 5 / 1)
	end
end


ok