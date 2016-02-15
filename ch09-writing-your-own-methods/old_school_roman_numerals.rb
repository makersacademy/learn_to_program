def old_roman_numeral num
  str = ""
  while num > 0
    if num >= 1000
      str << "M"*(num / 1000)
      num = num % 1000
    elsif num >= 500
      str << "D"*(num / 500)
      num = num % 500
    elsif num >= 100
      str << "C"*(num / 100)
      num = num % 100
    elsif num >= 50
      str << "L"*(num / 50)
      num = num % 50
    elsif num >= 10
      str << "X"*(num / 10)
      num = num % 10
    elsif num >= 5
      str << "V"*(num / 5)
      num = num % 5
    else
      str << "I"*(num / 1)
      num = 0
    end
  end
  str
end
