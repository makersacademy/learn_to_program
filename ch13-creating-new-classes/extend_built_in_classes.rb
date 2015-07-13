puts 'Enter a number and the factorial of that number will be returned'
num = gets.chomp.to_i

class Integer
	def factorial
		if self < 0
		return 'You can\'t take the factorial of a negative number!'
		end
		if self <= 1
			1
		else
			self * (self-1).factorial
		end
	end
end

puts num.factorial