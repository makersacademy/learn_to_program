def roman_numeral num # Return Roman numerals with addition only

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

  # CM = 900
  if (num / 900) > 0
    numeral = 'CM' * (num / 900)
    num = num % 900
  end

  # D = 500
  if (num / 500) > 0
    numeral = numeral + 'D' * (num / 500)
    num = num % 500
  end

  # CD = 400
  if (num / 400) > 0
    numeral = numeral + 'CD' * (num / 400)
    num = num % 500
  end

  # C = 100
  if (num / 100) > 0
    numeral = numeral + 'C' * (num / 100)
    num = num % 100
  end

  # XC = 90
  if (num / 90) > 0
    numeral = numeral + 'XC' * (num / 90)
    num = num % 90
  end

# L = 50
  if (num / 50) > 0
    numeral = numeral + 'L' * (num / 50)
    num = num % 50
  end

  # XL = 40
  if (num / 40) > 0
    numeral = numeral + 'XL' * (num / 40)
    num = num % 40
  end

# X = 10
  if (num / 10) > 0
    numeral = numeral + 'X' * (num / 10)
    num = num % 10
  end

  # IX = 9
  if (num / 9) > 0
    numeral = numeral + 'IX' * (num / 9)
    num = num % 9
  end

# V = 5
  if (num / 5) > 0
    numeral = numeral + 'V' * (num / 5)
    num = num % 5
  end

# IV = 5
  if (num / 4) > 0
    numeral = numeral + 'IV' * (num / 4)
    num = num % 4
  end

# I = 1
  if num > 0
    numeral = numeral + 'I' * num
  end

numeral

end

puts roman_numeral(4)
puts roman_numeral(9)
puts roman_numeral(64)
puts roman_numeral(1019)