def english_number number
  if number < 0
      return "Please enter a number that isn\'t negative."
  end
  if number == 0
    return "zero"
  end
  num_string = ""
  ones_place = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
  tens_place = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
  teenagers = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
  big_nums = {"quindecillion" => 48, "quattuordecillion" => 45, "tredecillion" => 42, "duodecillion" => 39, "undecillion" => 36, "decillion" => 33, "nonillion" => 30, "octillion" => 27, "septillion" => 24, "sextillion" => 21, "quintillion" => 18, "quadrillion" => 15, "trillion" => 12, "billion" => 9, "million" => 6, "thousand" => 3, "hundred" => 2}
  left = number
  big_nums.each do |k, v|
    write = left/("1"+("0" * v)).to_i
    left -= write * ("1"+("0" * v)).to_i
    if write > 0
      big_number = english_number write
      num_string += big_number + " " + k
      if left > 0
        num_string += " "
      end
    end
  end
  write = left/10
  left -= write*10
  if write > 0
    if ((write == 1) && (left > 0))
      num_string += teenagers[left-1]
      left = 0
    else
      num_string += tens_place[write-1]
    end
    if left > 0
      num_string += "-"
    end
  end
  write = left
  left = 0
  if write > 0
    num_string += ones_place[write-1]
  end
  return num_string
end

#puts english_number 1234567890123456789012
