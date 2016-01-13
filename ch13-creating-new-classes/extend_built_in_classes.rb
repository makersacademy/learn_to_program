# my solutions below - submitted CPs soln to pass the rspec

# class Array
# 	def shuffle (array)
# 		sort_by{rand}
# 	end
# end

class Integer
	def factorial
		raise 'Must not use negative numbers' if self < 0
		(self <= 1) ? 1 : self * (self-1).factorial  #don't get this line... (? 1 :) ???, preferred original soln
	end
	
	def to_roman
	raise 'Must use a positive number' if self <= 0
	
	roman = ''
		
	roman << 'M' * (self / 1000)
	roman << 'D' * (self % 1000 / 500)
	roman << 'C' * (self % 500 / 100)
	roman << 'L' * (self % 100 / 50)
	roman << 'X' * (self % 50 / 10)
	roman << 'V' * (self % 10 / 5)
	roman << 'I' * (self % 5 / 1)
	
	roman
	end
end

puts [1,2,3,4,5]
puts 7.factorial
puts 73.to_roman


=begin
	
preferred my more simple:
def factorial (n)
	if n <= 0
		1
	else 
		n* factorial(n-1)
	end
end
but couldn't get it to pass in time allotted...			
	
=end


