class Integer
	# your code here
	def to_roman
		romanNums = {
			1    => 'I',
			5    => 'V',
			10   => 'X',
			40   => 'XL',
			50   => 'L',
			90   => 'XC',
			100  => 'C',
			400  => 'CD',
			500  => 'D',
			900  => 'CM',
			1000 => 'M'
		}

		result = ''
		number  =  self
		romanNums.keys.reverse.each do |n|
			while number >= n
				number -= n
				result += romanNums[n]
			end
		end
		result
	end

	def factorial
		(1..self).inject(:*)
	end

end