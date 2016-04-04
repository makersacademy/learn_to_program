def old_roman_numeral(num)

# string and hash MUST be in the method, or they cannot be accessed

  conversion = {
  	1000 => "M",
  	500 => "D",
  	100 => "C",
  	50 => "L",
  	10 => "X",
  	5 => "V",
  	1 => "I"	
  }

  word = ""
  
  conversion.each do |integer, letter|
	result = num/integer # divide num by each key
		if result > 0 # if there is a key which is smaller than num or equal to num returns an integer and rounds down
			word << letter * result # multiply the correspending value with the result and add it to the conversion
			num -= integer * result # the new value of n, then it iterates through again, until result == 0
		end
  end

  word

end
