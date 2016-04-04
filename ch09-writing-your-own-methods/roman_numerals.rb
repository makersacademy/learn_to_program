def roman_numeral(num)

  conversion = {
  	1000 => "M",
  	900 => "CM",
  	500 => "D",
  	100 => "C",
  	90 => "XC",
  	50 => "L",
  	40 => "XL",
  	10 => "X",
  	9 => "IX",
  	5 => "V",
  	4 => "IV",
  	1 => "I"	
  }

  word = ""
  
  conversion.each do |integer, letter|

	result = num/integer 

		if result > 0 
			word << letter * result
			num -= integer * result
		end

  end

  word
  
end