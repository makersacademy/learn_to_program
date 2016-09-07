def english_number(number)
  return "Please enter a positive integer" if number < 0
  return "zero" if number == 0

  num_string = ""
  ones = ["one", "two", "three",
          "four", "five", "six",
          "seven", "eight", "nine"]
  tens = ["ten", "twenty", "thirty",
          "forty", "fifty", "sixty",
          "seventy", "eighty", "ninety"]
  teens = ["eleven", "twelve", "thirteen",
           "fourteen", "fifteen", "sixteen",
           "seventeen", "eighteen", "nineteen"]
  units = ["hundred",  "thousand", "million",
           "billion", "trillion", "quadrillion",
           "quintillion", "sextillion", "septillion",
           "octillion", "nonillion", "decillion",
           "undecillion", "duodecillion", "tredecillion",
           "quattuordecillion", "quindecillion", "sexdecillion",
           "septdecillion", "octodecillion", "novedecillion"]

  remainder = number

  i = units.length - 1
  while i > 0
    write = remainder/(1000 ** i)
    remainder -= write*(1000 ** i)
    if write > 0
      num_string += english_number(write) + " " + units[i]
      if remainder > 0
        num_string += " "
      end
    end
    i -= 1
  end

  write = remainder/100
  remainder -= write*100
  if write > 0
    hundreds = english_number(write)
    num_string += hundreds + " hundred"
    if remainder > 0
      num_string += " "
    end
  end

  write = remainder/10
  remainder -= write*10
  if write > 0
    if write == 1 && remainder > 0
      num_string += teens[remainder - 1]
      remainder = 0
    else
      num_string += tens[write - 1]
    end
    if remainder > 0
      num_string += "-"
    end
  end

  write = remainder
  remainder = 0
  if write > 0
    num_string += ones[write - 1]
  end

  num_string
end
