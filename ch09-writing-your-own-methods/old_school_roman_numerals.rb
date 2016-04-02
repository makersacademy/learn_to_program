def old_roman_numeral num
	result = ""
	
	cases = {
  	1 => "I",
  	5 => "V", 
 	10 => "X",
 	50 => "L",
  	100 => "C",
  	500 => "D",
  	1000 => "M"
}


  	if num < 3001
  		remainder = num
  		if remainder > 999
  			thou_nums = num / 1000 						 
  			remainder = num % 1000	
  			result += cases[1000] * thou_nums
  		end

  		if remainder > 499
  			five_hund_nums = num / 500 						 
  			remainder = num % 500	
  			result += cases[500] * five_hund_nums
  		end

  		if remainder > 99
  			hund_nums = num / 100 						 
  			remainder = num % 100	
  			result += cases[100] * hund_nums
  		end	
					 
  		if remainder > 49 
 			fifties_nums =  remainder / 50
  			remainder = remainder % 50
  			result += cases[50] * fifties_nums
  		end

  		if remainder > 9
  			remainder_of_tens = remainder / 10
  			remainder = remainder % 10
  			result += cases[10] * remainder_of_tens
  		end	
  		
  		if remainder > 4
  			remainder_of_fives = remainder / 5
  			remainder = remainder % 5
  			result += cases[5] * remainder_of_fives
  		end 	

  		if remainder > 0
  			remainder_of_ones = remainder / 1
  			result += cases[1] * remainder_of_ones
  		end	

  		result 
  	end	

  	
end


