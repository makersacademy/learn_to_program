class Array
	def shuffle(shuffled=[])
		unless self.empty?
  			index = rand(self.length)
  			shuffled.push(self[index])
  			self.delete_at(index)
  			self.shuffle(shuffled)
  		end
  		shuffled
  	end
end

class Integer

	def factorial(x=self)
		return 1 if x == 1
		x * factorial(x-1)
	end

	def to_roman
  		answer = ''
  		#thousands
  		to_write = self / 1000
  		left = self % 1000
  		answer += 'M' * to_write
  		#500s
  		to_write = left / 500
  		left %= 500
  		answer += 'D' * to_write
 		#100s
  		to_write = left / 100
  		left %= 100
  		answer += 'C' * to_write
  		#50s
  		to_write = left / 50
  		left %= 50
  		answer += 'L' * to_write
  		#10s
  		to_write = left / 10
  		left %= 10
  		answer += 'X' * to_write
  		#5s
  		to_write = left / 5
  		left %= 5
  		answer += 'V' * to_write
  		#1s
  		answer += 'I' * left
  		answer
	end

end