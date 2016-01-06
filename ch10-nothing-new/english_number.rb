def english_number(number)

  if number < 0
    return "Please enter a positive number"
  end
  
  if number == 0
    return "zero"
  end
  
  num_string = ''
  
  ones_place = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
  tens_place = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
  teenagers = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
  bigger = ["thousand", "million", "billion", "trillion", "quadrillion", "quintillion", "sextillion", "septillion", "octillion", "nonillion", "decillion", "undecillion", "duodecillion", "tredecillion", "quattuordecillion", "quindecillion"]
  
  left = number
  
  length = bigger.length - 1
  
  while length >= 0
    write = left / (1.to_s + "000" * (length + 1)).to_i  
    left = left - write * (1.to_s + "000" * (length + 1)).to_i
    
    if write > 0
      zillions = english_number(write)
      num_string += zillions + ' ' + bigger[length]
      
      if left > 0
        num_string += " "
      end
    end
    
    length -= 1
  end  
  
  write = left / 100
  left = left - write * 100
  
  if write > 0
    num_string += ones_place[write-1] + ' hundred'
    if left > 0
      num_string += " "
    end
  end
  
  write = left / 10
  left = left - write * 10
  
  if write > 0
    if ((write == 1) and (left > 0))
      num_string += teenagers[left-1]
      left = 0
    else
      num_string += tens_place[write-1]
    end
    
    if left > 0
      num_string += " "
    end
  end
  
  write = left
  left = 0
  
  if write > 0
    num_string += ones_place[write-1]
  end
  
  num_string
end

