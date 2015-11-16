def english_number number
  # your code here
  if number < 0 
  	return "Please enter a number that is not negative."
  end

  if number == 0 
  	return "zero"
  end

  num_string = ""

  ones = %w(one two three four five six seven eight nine) 

  tens = %w(ten twenty thirty forty fifty sixty seventy eighty ninety)

  teens = %w(eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)

  zills = [['hundred', 				 2],
           ['thousand', 			 3],
           ['million', 				 6],
           ['billion', 				 9],
           ['trillion', 			12],
           ['quadrillion', 			15],
           ['quintillion', 			18],
           ['sextillion', 			21],
           ['septillion', 			24],
           ['octillion', 			27],
           ['nonillion', 			30],
           ['decillion', 			33],
           ['undecillion', 			36],
           ['duodecillion', 		39], 
           ['tredecillion', 		42],
           ['quattuordecillion', 	45],
           ['quindecillion',		48],
           ['sexdecillion', 		51],
           ['septendecillion', 		54],
           ['octodecillion', 		57],
           ['novemdecillion', 		60],
           ['vigintillion', 		63],
           ['googol', 			   100]]

  left = number

  while zills.length > 0
  	zill_pair = zills.pop
  	zill_name = zill_pair[0]
  	zill_base = 10 ** zill_pair[1]
  	write = left / zill_base
  	left -= write * zill_base
  	if write > 0
  		prefix = english_number write
  		num_string += prefix + " " + zill_name
  		if left > 0 
  			num_string += " "
  		end
  	end
  end

  write = left / 10
  left -= write * 10

  if write > 0
  	if ((write == 1) && (left > 0))
  		num_string += teens[left-1]
  		left = 0
  	else
  		num_string += tens[write-1]
  	end

  	if left > 0 
  		num_string += "-"
  	end
  end

  write = left

  left = 0 

  if write > 0 
  	num_string += ones[write-1]
  end

  num_string

end


puts english_number(9999)
# >> one thousand
# >> nine thousand nine hundred ninety-nine