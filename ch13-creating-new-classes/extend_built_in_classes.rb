class Integer
	def roman
		result = ""

		thousands = self / 1000
		hundreds = (self % 1000) / 100
		tens = (self % 100) / 10
		ones = (self % 10)

		result = "M" * thousands

		if hundreds != 4 && hundreds != 9
			result << "D" * (self % 1000 / 500)
			result << "C" * (self % 500 / 100)
		elsif hundreds == 4
			result << "CD"
		elsif hundreds == 9
			result << "CM"
		end

		if tens != 4 && tens != 9
			result << "L" * (self % 100 / 50)
			result << "X" * (self % 50 / 10)
		elsif tens == 4
			result << "XL"
		elsif tens == 9
			result << "XC"
		end

		if ones != 4 && ones != 9
			result << "V" * (self % 10 / 5)
			result << "I" * (self % 5)
		elsif ones == 4
			result << "IV"
		elsif ones == 9
			result << "IX"
		end

		result
		end

end
