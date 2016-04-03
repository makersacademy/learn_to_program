class Integer
	def to_roman
	  num = self
	  roman = []
	  roman << 'M' * (num / 1000) 
	  roman << 'D' * (num % 1000 / 500) 
	  roman << 'C' * (num % 500 / 100) 
	  roman << 'L' * (num % 100 / 50) 
	  roman << 'X' * (num % 50 / 10) 
	  roman << 'V' * (num % 10 / 5) 
	  roman << 'I' * (num % 5 / 1)

	  roman.join.to_s
	end
end

class Array
	def shuffle
	  	unshuffled_list = self
		shuffled_list = []

		while true
			current = unshuffled_list.sample
			shuffled_list.push(current)
	  		unshuffled_list.delete_at(unshuffled_list.find_index(current))
	  		break if unshuffled_list == []
	  	end

		return shuffled_list

	end
end

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