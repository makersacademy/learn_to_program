def old_roman_numeral num # Return Roman numerals with addition only

  if !(num.is_a? Integer)
    return "Please enter an integer."
  end

  if num < 0
    return "Please enter a number that isn't negative."
  end

  if num == 0 # Handle zero quickly.
    return ''
  end

  # M = 1,000
  if (num / 1000) > 0
    numeral = 'M' * (num / 1000)
    num = num % 1000
  else
    numeral = '' # Initalise string.
  end

  # D = 500
  if (num / 500 ) > 0
    numeral = numeral + 'D' * (num / 500)
    num = num % 500
  end

  # C = 100
  if (num / 100 ) > 0
    numeral = numeral + 'C' * (num / 100)
    num = num % 100
  end

# L = 50
  if (num / 50 ) > 0
    numeral = numeral + 'L' * (num / 50)
    num = num % 50
  end

# X = 10
  if (num / 10 ) > 0
    numeral = numeral + 'X' * (num / 10)
    num = num % 10
  end

# V = 5
  if (num / 5 ) > 0
    numeral = numeral + 'V' * (num / 5)
    num = num % 5
  end

# I = 1
  if num > 0
    numeral = numeral + 'I' * num
  end

numeral

end

puts old_roman_numeral(9)
puts old_roman_numeral(1999)
puts old_roman_numeral(0.1)
puts old_roman_numeral(-1)