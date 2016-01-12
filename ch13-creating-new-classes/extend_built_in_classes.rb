class Integer
	
	def factorial
		num = self
		num = (1..num).reduce(:*)
	end

	def to_roman
	  num = self
	   hash = { 1000 => "M",
           500 => "D",
           100 => "C",
           50 => "L",
           10 => "X",
           5 => "V",
           1 => "I" }

	  str = ""
		  hash.each do |number, sub|
		    while num >= number
		      str << sub
		      num -= number
		    end
		  end
		  str
	end

end