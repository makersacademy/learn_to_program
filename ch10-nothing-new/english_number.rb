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
  zillions =[['hundred', 2],
            ['thousand', 3],
            ['million', 6],
            ['billion', 9],
            ['trillion', 12],
            ['quadrillion', 15],
            ['quintillion', 18],
            ['sextillion', 21],
            ['septillion', 24],
            ['octillion', 27],
            ['nonillion', 30],
            ['decillion', 33],
            ['undecillion', 36],
            ['duodecillion', 39],
            ['tredecillion', 42],
            ['quattuordecillion', 45],
            ['quindecillion', 48],
            ['sexdecillion', 51],
            ['septendecillion', 54],
            ['octodecillion', 57]]

  left = number #number left to write

  while zillions.length > 0 
    zil_pair = zillions.pop
    zil_name = zil_pair[0]
    zil_base = 10**zil_pair[1]

    write = left/zil_base 
    left = left - write*zil_base

    if write > 0 
      prefix = english_number write 
      num_string = num_string + prefix + ' ' + zil_name 

      if left > 0 
        num_string = num_string + ' '
      end 
    end 
  end 

  write = left/100 #how many hundred left 
  left = left - write*100 #subtract off hundreds 

  if write > 0
  	hundreds = english_number write #recursive occurs 
  	num_string = num_string + hundreds + ' hundred'
  	if left > 0 
  		num_string = num_string + ' '
  	end 
  end 

  write = left/10 #how many tenth are left
  left = left - write*10 #subtract off tenth 

  if write > 0 
  	if ((write == 1) and (left > 0))
  		num_string = num_string + teen_num[left-1] 
  		left = 0 
  	else 
  		num_string = num_string + tenth_num[write-1] #whole tenth number
  	end 
  
  	if left > 0 
  	num_string = num_string + '-'
  	end 
  end 

  write = left 
  left = 0

  if write > 0 
  	num_string = num_string + ones_num[write-1]
  end
  
  num_string

end

