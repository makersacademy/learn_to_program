class Integer
  
	def to_roman
	  	num = self
		numeral_hash = {'M'=>1000, 'D'=>500, 'C'=>100, 'L'=>50, 'X'=>10, 'V'=>5, 'I'=>1}
		return_string = ''

		numeral_hash.each do |key, value|
			if num >= value
	  			multiplier = num / value
	  			multiplier.times {return_string += key}
	  			num -= multiplier * value
	  		end
		end

		return_string
	end

	def factorial
		self == 1 ?	1 : (self * (self - 1).factorial)
	end

end