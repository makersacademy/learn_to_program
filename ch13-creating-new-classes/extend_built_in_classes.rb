class Integer
	def factorial
		if self <= 1
			1
		else
			self * (self-1).factorial
		end
	end

	def to_roman

		num = self

		numerals = ''

		numeral_hash = {
			'M' => 1000,
			'D' => 500,
			'C' => 100,
			'L' => 50,
			'X' => 10,
			'V' => 5,
			'I' => 1
		}

		numeral_hash.each do |numeral, number|
			numerals << numeral * (num / number)

			num = num % number
		end

		numerals
		
	end

end

class Array
	def shuffle
		sort_by(rand)
	end
end