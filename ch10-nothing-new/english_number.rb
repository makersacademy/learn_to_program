def english_number number
  return "Please enter a positive number" if number < 0
  return "zero" if number == 0
  num_string = ""
  left = number

  ones = %w(zero one two three four five six seven eight nine ten)
  teens = %w(ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)
  tens = %w(zero ten twenty thirty forty fifty sixty seventy eighty ninety)
  powers = [['hundred', 2],
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
              ['octodecillion', 57],
              ['novemdecillion', 60],
              ['vigintillion', 63],
              ['googol', 100]]

  while powers.length > 0
    digit_pair = powers.pop
    digit_name = digit_pair[0]
    digits = 10 ** digit_pair[1]

    write = left / digits
    left -= write * digits

    if write > 0
      prefix = english_number write
      num_string += prefix + " " + digit_name

      if left > 0
        num_string += " "
      end
    end
  end

  write = left / 10
  left -= write * 10

  if write > 0
    if write == 1 && left > 0
      num_string += "#{teens[left]}"
      left = 0
    else
      num_string += "#{tens[write]}"
    end

    if left > 0
      num_string += "-"
    end
  end

  write = left
  left -= write

  if write > 0
    num_string += "#{ones[write]}"
  end

  num_string
end
