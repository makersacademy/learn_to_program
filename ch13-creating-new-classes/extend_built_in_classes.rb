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

	def to_roman
  		if self < 0
  			return "Must use positive integer"
  		end
  		bits = { 1000 => "M", 500 => "D", 100 => "C", 50 => "L", 10 => "X", 5 => "V", 1 => "I" }
  		number = self 
  		numeral = ""
  		bits.each_pair do |k,v|
  			amount = number/k
  			amount.times { numeral<<v }
  			number = number%k
  		end
  		numeral
	end
end