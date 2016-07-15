def old_roman_numeral num

raise "It must be a positive integer" if num <= 0

roman_num = ''

  while num != 0
    if num >= 1000
      roman_num << "M" * (num / 1000)
      num %= 1000
    elsif num >= 500
      roman_num << "D" * (num / 500)
      num %= 500
    elsif num >= 100
      roman_num << "C" * (num / 100)
      num %= 100
    elsif num >= 50
      roman_num << "L" * (num / 50)
      num %= 50
    elsif num >= 10
      roman_num << "X" * (num / 10)
      num %= 10
    elsif num >= 5
      roman_num << "V" * (num / 5)
      num %= 5
    elsif num >= 1
      roman_num << "I" * (num / 1)
      num %= 1
    end
  end

roman_num

end
