class Integer
	def factorial
		raise 'No negative integer is allowed.' if self <0
		self ==1 ? 1 : self * (self-1).factorial
	end

	def to_roman
	  return puts "Please input a positive integer." if self <1
	  return puts "Please input a number between 1-3000." unless self>=1 && self<=3000
	  roman = ""
	  thousands = (self/1000)
	  hundreds = (self%1000/100)
	  tens = (self%100/10)
	  ones = (self%10/1)

	  roman << "M" * thousands
	  if hundreds == 9
	  	roman << "CM"
	  elsif hundreds == 4
	  	roman << "CD"
	  else
	  	roman << "D"*(self%1000/500)
	  	roman << "C"*(self%500/100)
	  end

	  if tens == 9
	  	roman << "XC"
	  elsif tens == 4
	  	roman << "XL"
	  else
	  	roman << "L"*(self%100/50)
	  	roman << "X"*(self%50/10)
	  end

	  if ones == 9
	  	roman << "IX"
	  elsif ones == 4
	  	roman << "IV"
	  else
	  	roman << "V"*(self%10/5)
	  	roman << "I"*(self%5/1)
	  end

	  puts roman
	end
end

# puts 1947.to_roman
# puts 4.factorial