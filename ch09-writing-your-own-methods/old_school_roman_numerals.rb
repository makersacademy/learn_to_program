def old_roman_numeral num
  return_number = ""

  while num > 0
    if num >= 1000
      return_number << "M" * (num/1000)
      num %= 1000
    elsif num >= 500
      return_number << "D" * (num/500)
      num %= 500
    elsif num >= 100
      return_number << "C" * (num/100)
      num %= 100
    elsif num >= 50
      return_number << "L" * (num/50)
      num %= 50
    elsif num >= 10
      return_number << "X" * (num/10)
      num %= 10
    elsif num >= 5
      return_number << "V" * (num/5)
      num %= 5
    else num >= 1
      return_number << "I" * (num/1)
      num %= 1
    end
  end

  return_number
end

old_roman_numeral 501
