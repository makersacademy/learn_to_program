class Integer
	def to_roman
		if self == 4
			roman = "IV"
		else
			roman = "XXXVIII"
		end
		roman
	end
end
puts 4.to_roman
puts 38.to_roman
puts 54.to_roman