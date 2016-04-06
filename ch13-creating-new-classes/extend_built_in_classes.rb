class Array
	def shuffle
		self.sort_by{rand}
	end
end

class Integer
	def factorial
		raise "Number must be positive" if self < 0
		self >= 1 ? self * (self-1).factorial : 1
	end

	def roman_numeral
  		if self < 0
  			return "Must use positive integer"
  		end
  		bits = { 1000 => "M", 900 => "CM", 500 => "D", 400 => "CD", 100 => "C", 90 => "XC", 50 => "L", 40 => "XL", 10 => "X", 9 => "IX", 5 => "V", 4 => "IV", 1 => "I" }
  		number = self 
  		numeral = ""
  		bits.each_pair do |k,v|
  			amount = number/k
  			amount.times { numeral<<v }
  			number = number%k
  		end
  		print numeral
	end
end