def old_roman_numeral num
  new_num = ""
  
  new_num << "M" * (num / 1000)
  new_num << "D" * (num % 1000 / 500)
  new_num << "C" * (num % 500 / 100)
  new_num << "L" * (num % 100 / 50)
  new_num << "X" * (num % 50 / 10)
  new_num << "V" * (num % 10 / 5)
  new_num << "I" * (num % 5)
  
  new_num
end