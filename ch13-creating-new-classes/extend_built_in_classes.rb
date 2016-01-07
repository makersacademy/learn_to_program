class Integer
	def factorial
		if self <= 1
			1
		else
			self * (self-1).factorial
		end
	end
end

class Array
	def shuffle (array)
		sort_by{rand}
	end
end

