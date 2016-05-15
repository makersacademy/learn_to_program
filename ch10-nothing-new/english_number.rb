def english_number(number)
  return "Please enter a number that isn't negative." if number < 0
  return "zero" if number == 0

  num_string = ""

  ones_place = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
  tens_place = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
  teenagers  = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]

  biggies = {
    "centillion" => 10**303,
    "vigintillion" => 10**63,
    "novemdecillion" => 10**60,
    "octodecillion" => 10**57,
    "septendecillion" => 10**54,
    "sexdecillion" => 10**51,
    "quindecillion" => 10**48,
    "quattuordecillion" => 10**45,
    "tredicillion" => 10**42,
    "duodecillion" => 10**39,
    "undecillion" => 10**36,
    "decillion" => 10**33,
    "nonillion" => 10**30,
    "octillion" => 10**27,
    "septillion" => 10**24,
    "sextillion" => 10**21,
    "quintillion" => 10**18,
    "quadrillion" => 10**15,
    "trillion" => 10**12,
    "billion" => 10**9,
    "million" => 10**6,
    "thousand" => 10**3,
    "hundred" => 100
  }

  left = number

  biggies.each do |k, v|
    write = left / v
    left -= write * v

    if write > 0
      units = english_number(write)
      num_string = num_string + units + " " + k #if left > 0

      if left > 0
        num_string << " "
      end
    end
  end

  write = left / 10
  left -= write * 10

  if write > 0
    if ((write == 1) and (left > 0))
      num_string = num_string + teenagers[left-1]
      left = 0
    else
      num_string = num_string + tens_place[write-1]
    end

    if left > 0
      num_string << "-"
    end
  end

  write = left

  if write > 0
    num_string = num_string + ones_place[write-1]
  end

  num_string
end

puts english_number(  0)
puts english_number(  9)
puts english_number( 10)
puts english_number( 11)
puts english_number( 17)
puts english_number( 32)
puts english_number( 88)
puts english_number( 99)
puts english_number(100)
puts english_number(101)
puts english_number(234)
puts english_number(3211)
puts english_number(999999)
puts english_number(1000000000000)
puts english_number(109238745102938560129834709285360238475982374561034)
