def english_number number

  if number < 0
    return "please enter a number that isn't negative."
  end
  if number == 0
    return "zero"
  end
  num_string = ""
  ones_place = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
  tens_place = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
  teenagers = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
  zillions = [[" googol", 100], [" vigintillion", 63], [" novemdecillion", 60], [" octodecillion", 57], [" septendecillion", 54], [" sexdecillion", 51], [" quindecillion", 48], [" quattuordecillion", 45], [" tredecillion", 42], [" duodecillion", 39], [" undecillion", 36], [" decillion", 33], [" nonillion", 30], [" octillion", 27], [" septillion", 24], [" sextillion", 21], [" quintillion", 18], [" quadrillion", 15], [" trillion", 12], [" billion", 9], [" million", 6], [" thousand", 3], [" hundred", 2]]

left = number
zillions.each do |name, exp|
  write = left/(10**exp)
  left = left - write*(10**exp)
  if write > 0
    hold_var = english_number write
    num_string = num_string + hold_var + "#{name}"
    if left > 0
      num_string = num_string + " "
    end
  end
end
  write = left/10
  left = left - write*10
  if write >0
    if ((write == 1)) and (left > 0)
      num_string = num_string + teenagers[left-1]
      left = 0
    else
      num_string = num_string + tens_place[write-1]
    end
    if left >0
      num_string = num_string + "-"
    end
  end
  write = left
  left = 0
  if write >0
    num_string = num_string + ones_place[write-1]
  end
  return num_string
end
