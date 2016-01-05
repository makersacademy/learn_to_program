def english_number number
  if number < 0
    return "Please enter a number that isn't negative"
  end
  if number == 0
    return "zero"
  end

  num_string = ""

  ones_place = %w(one two three four five six seven eight nine)
  tens_place = %w(ten twenty thirty forty fifty sixty seventy eighty ninety)
  teenagers = %w(eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)
  big_numbers = %w(hundred thousand million billion trillion quadrillion quintillion sextillion septillion octillion nonillion decillion undecillion duodecillion tredecillion quattuordecillion quindecillion)

  left = number

  (big_numbers.length - 1).downto(0) do |n|
    if n == 0
      write = left/100
      left -= write*100
    else
      write = left/(1000**n)
      left -= write*(1000**n)
    end

    if write > 0
      big_place = english_number write
      num_string += big_place + " " + big_numbers[n]
      num_string += " " if left > 0
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
    num_string += "-" if left > 0
  end

  write = left
  left = 0

  if write > 0
    num_string += ones_place[write-1]
  end

  num_string
end