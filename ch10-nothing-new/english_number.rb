def english_number number
  if number < 0 
  	return  "Please enter a number that isn\'t negative"
  end

  if number == 0 
  	return "zero" 
  end

  num_string = ""

  ones_num = ["one", "two","three","four","five","six","seven","eight","nine"]

  tenth_num = ["ten", "twenty","thirty", "fourty", "fifty", "sixty", "seventy", "eighty","ninety"]

  teen_num = [ "eleven", "twelve", "thirteen","fourteen","fifteen","sixteen","seventeen","eighteen","nineteen"]


  left = number #number left to write

  write = left/1000000 #how many millions left 
  left = left - write*1000000

  if write > 0 
  	millions = english_number write #recursive
  	num_string = num_string + millions + ' millions'
  	if left > 1 
  		num_string = num_string + " "
  	end
  end 

  write = left/1000 #how many thousands left 
  left = left - write*1000 

  if write > 0 
  	thousands = english_number write #recursive
  	num_string = num_string + thousands + ' thousand'
  	if left > 1 
  		num_string = num_string + " "
  	end
  end 

  write = left/100 #how many hundred left 
  left = left - write*100 #subtract off hundreds 

  if write > 0
  	hundreds = english_number write #recursive occurs 
  	num_string = num_string + hundreds + ' hundred'
  	if left > 1 
  		num_string = num_string + " "
  	end 
  end 

  write = left/10 #how many tenth are left
  left = left - write*10 #subtract off tenth 

  if write > 0 
  	if ((write == 1) and (left > 0))
  		num_string = num_string + teen_num[left-1] 
  		left == 0 
  	else 
  		num_string = num_string + tenth_num[write-1] #whole tenth number
  	end 
  
  	if left > 0 
  	num_string = num_string + " "
  	end 
  end 

  write = left 
  left = left - write 

  if write > 0 
  	num_string = num_string + ones_num[write-1]
  end
  
  num_string

end

puts english_number (63)
puts english_number (598)
puts english_number (2000008)
