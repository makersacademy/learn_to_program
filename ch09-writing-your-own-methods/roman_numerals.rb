def roman_numeral num
    new_num = ""
  
  new_num << "M" * (num / 1000)
  
  if (num % 1000 / 100) == 9
    new_num << "CM"
  elsif (num % 1000 / 100) == 4
    new_num << "CD"
  else
    new_num << "D" * (num % 1000 / 500)
    new_num << "C" * (num % 500 / 100)
  end
  
  if (num % 50 / 10) == 9
    new_new << "XC"
  elsif (num % 50 / 10) ==4
    new_num << "XL"
  else
    new_num << "L" * (num % 100 / 50)
    new_num << "X" * (num % 50 / 10)
  end
  
  if (num % 10 / 1) == 9
    new_num << "IX"
  elsif (num % 5 / 1) == 4
    new_num << "IV"
  else
    new_num << "V" * (num % 10 / 5)
    new_num << "I" * (num % 5)
  end
  
  new_num
end