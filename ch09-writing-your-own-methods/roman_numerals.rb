def roman_numeral num
  roman_num = ''

  no_thousands = num/1000
  no_hundreds = (num%1000)/100
  no_tens = (num%100)/10
  no_ones = num%10
  
  roman_num << 'M' * no_thousands
    
  if (no_hundreds == 4)
    roman_num << 'CD' 
  elsif (no_hundreds == 9)
    roman_num << 'CM'
  else
    roman_num << 'D' * (num % 1000 / 500)
    roman_num << 'C' * (num % 500 / 100) 
  end

  if (no_tens == 4)
    roman_num << 'XL' 
  elsif (no_tens == 9)
    roman_num << 'XC'
  else
    roman_num << 'L' * (num % 100 / 50)
    roman_num << 'X' * (num % 50 / 10) 
  end
  
  if (no_ones == 4)
    roman_num << 'IV' 
  elsif (no_ones == 9)
    roman_num << 'IX'
  else
    roman_num << 'V' * (num%10 / 5) 
    roman_num << 'I' * (num%5)
  end
  
  return roman_num
  
end
