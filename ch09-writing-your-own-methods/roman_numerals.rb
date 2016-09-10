def roman_numeral number
  if number < 0  # No negative numbers.
      return 'Please enter a number that isn\'t negative.'
    end
  if number == 0
    return 'zero'
  end

  num_string = ""

  onesPlace = ["I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"]
  tensPlace = ['X', 'XX', 'XXX','XL', 'L', 'LX', 'LXX', 'LXXX', 'XC']
  hundredsPlace = ["C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM"]
  thousandsPlace = ["M", "MM", "MMM"]

  remainder = number

  current = remainder/1000
  remainder -= (current*1000)

  if current  > 0
  num_string = num_string + thousandsPlace[current-1]
  end

  current = remainder/100 #how many hundreds we have to write out
  remainder -= (current*100)

  if current > 0
      num_string = num_string + hundredsPlace[current-1]
  end

  current = remainder/10
  remainder -= (current*10)

  if current > 0
    num_string = num_string + tensPlace[current-1]
  end

  current = remainder
  remainder = 0

  if current > 0
    num_string = num_string + onesPlace[current-1]
  end

  num_string
end
