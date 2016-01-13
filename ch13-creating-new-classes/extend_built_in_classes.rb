class Array
	def shuffl
	 	random = self.sample(self.length)
  		return random# your code here
  	end
 end

#puts [1,2,3,4,5,6,7,8].shuffl


class Integer
	def factorial
		arr = *(1..self)
		counter = 1
		arr.each do |x|
			counter = x * counter
		end
		counter
		
	end

	def to_roman
		roman = []
	if self <= 0
		puts 'Must be a positive number'
	else
		roman << 'M' * ( self / 1000 )
		roman << 'D' * ((self % 1000 )/500)
		roman << 'C' * ((self % 500  )/ 100)
		roman << 'L' * ((self % 100  )/50)
		roman << 'X' * ((self % 50   )/10)
		roman << 'V' * ((self % 10   )/5)
		roman << 'I' * ((self % 5    )/1)
	end
		roman.join

		
	end
  # your code here
end
puts 15.to_roman
#puts 5.factorial