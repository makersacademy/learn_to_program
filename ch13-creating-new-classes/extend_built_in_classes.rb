class Integer
  # your code here
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

	def to_roman
  	# your code here
  	numerals = Hash.new
  	numerals[1] = "I"
  	numerals[5] = "V"
  	numerals[10] = "X"
  	numerals[50] = "L"
	  numerals[100] = "C"
  	numerals[500] = "D"
  	numerals[1000] = "M"

  	numeral = ""

  	if self < 1 || self > 3000
	  	puts "Please choose a number between 1 and 3000"  	
  	end

  	left = self

  	div = [1000,500,100,50,10,5,1]

  	while left > 0 
  		div.each do |n|
  			write = left / n
  			left = left - write * n
  			if write > 0
	  			numeral = numeral + numerals[n] * write
  			end  			
  		end
  	end

  	return numeral

	end
end

puts 239.to_roman
# puts 6.factorial