class Integer
	def factorial
		return "No factorial of a negative number" if self < 0
		return 1 if self <= 1
		self * (self - 1).factorial
	end
end

class Array
	def shuffle
		shuffled = []
		for i in 0...self.length do
			rand = rand(self.length)
			shuffled << self[rand]
			self.delete_at(rand)
		end
		shuffled
	end
end