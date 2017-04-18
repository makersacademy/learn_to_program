class Integer
	Numerals = {
		1000 => 'M',
		500 => 'D',
		100 => 'C',
		50 => 'L',
		10 => 'X',
		5 => 'V',
		1 => 'I'
	}

	def to_roman
		number = self
		string = ''

		Numerals.collect do |num, roman|
	    string << roman * (number / num)
	    number %= num
	  end

		string
	end

	def factorial
		number = self
		total = self

		self.times do
			total *= number - 1 if number > 1
			number -= 1
		end

		total
	end
end


# p 123.to_roman
# p 5.factorial
