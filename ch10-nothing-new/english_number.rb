def english_number num
  if num < 0
  	return "No negatives, please"
  end
  if num == 0
  	return "zero"
  end
  
  ones = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
  tens = ["twenty", "thirty", "fourty", "fifty", "sixty", "seventy", "eighty", "ninty"]
  teens = ["ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "ninteen"]
  more_zeros = { "googol"=>100, "vigintillion"=>63, "novemdecillion"=>60, "octodecillion"=>57, "septendecillion"=>54, "sexdecillion"=>51, "quindecillion"=>48, "quattuordecillion"=>45, "tredecillion"=>42, "duodecillion"=>39, "undecillion"=>36, "decillion"=>33, "nonillion"=>30, "octillion"=>27, "septillion"=>24, "sextillion"=>21, "quintillion"=>18, "quadrillion"=>15, "trillion"=>12, "billion"=>9, "million"=>6, "thousand"=>3}


  words = ""
  left = num
  more_zeros.each_pair do |name, power|
    if left / (10**power) >= 1
      write = left/(10**power)
      left -= write*(10**power)
      how_many = english_number(write)
      words += "#{how_many} #{name}"
      if left > 0
        words += " "
      end
    end
  end

  write = left/100
  left = left - write*100
  
  if write > 0
  	hundreds = english_number write
  	words = words + hundreds + " hundred"
  	if left > 0
  	  words = words + " and "
  	end
  end
  
  write = left/10
  left = left - write*10
  
  if write > 0
    if ((write == 1) and (left >= 0))
      words = words + teens[left]
      left = 0
    else
      words = words + tens[write-2]
    end
  	
  	if left > 0
  	  words = words + "-"
    end
  end
  
  write = left
  left = 0

  if write > 0
  	words = words + ones[write-1]
  end

  words
end
