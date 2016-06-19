class Integer
	def factorial
		raise 'No negative integer is allowed.' if self <0
		self <=1 ? 1 : self * (self-1).factorial
	end

	def to_roman
		raise puts "Please input a positive integer." if self <=0
		raise puts "Please input a number between 1-3000." unless self>=1 && self<=3000
		roman = ""
		roman << "M" * (self/1000)
		roman << "D" * (self%1000/500)
		roman << "C" * (self%500/100)
		roman << "L" * (self%100/50)
		roman << "X" * (self%50/10)
		roman << "V" * (self%10/5)
		roman << "I" * (self%5/1)
		roman
	end
end

# puts 1947.to_roman
# puts 4.factorial