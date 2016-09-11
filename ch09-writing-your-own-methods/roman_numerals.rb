def roman_numeral num
  # reference:
  # I = 1, V = 5, X = 10, L = 50
  # C = 100, D = 500, M = 1000

  thous = (num / 1000) 
  hunds = (num % 1000 / 100) 
  tens = (num % 100 / 10) 
  ones = (num % 10 )

  roman = 'M' * thous # start building the roman number
                      # starting with the largest (thousands)
  

  # conversion code for integer to roman is the same
  # as the old_school_roman_numerals

  # 9 takes 1 before 10
  # 4 takes 1 before 5
  # giving the code instructions for case of 9 and 4 for each group
  # respectively (hundreds, tens, ones)
  

  if hunds == 9 
    roman = roman + "CM"
  elsif hunds == 4
    roman = roman + "CD"
  else
    roman = roman + 'D' * (num % 1000 / 500) 
    roman = roman + 'C' * (num % 500 / 100) 
  end

  if tens == 9 
    roman = roman + 'XC' 
  elsif tens == 4 
    roman = roman + 'XL' 
  else 
    roman = roman + 'L' * (num % 100 / 50) 
    roman = roman + 'X' * (num % 50 / 10) 
  end

  if ones == 9 
    roman = roman + 'IX' 
  elsif ones == 4 
    roman = roman + 'IV' 
  else 
    roman = roman + 'V' * (num % 10 / 5) 
    roman = roman + 'I' * (num % 5 / 1) 
  end
  
  roman

end

