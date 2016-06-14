def roman_numerals num
  thous = num / 1000
  remainder = num % 1000
  hunds= remainder/ 100 
  remainder = remainder % 100 
  tens = remainder / 10
  remainder = remainder % 10
  ones = remainder / 1
  roman =''
  roman = 'M' * thous
  # build up rest of number
  if hunds == 9 
    roman = roman + 'CM' #CM is 1000 - 100
  elsif hunds == 4
    roman = roman = 'CD' #CD = 400 and something..
  else # build D's 500
    remain  = num % 1000
    fivehuns = remain / 500
    roman = roman + 'D' * fivehuns  
    roman = roman + 'C' * (num % 500 / 100)
  end 
  #build special case for tens 9 of them and 4 of them
  if tens  == 9
    roman = roman + 'XC'
  elsif tens == 4
    roman = roman + 'XL'
  else 
    roman = roman + 'L'* (num % 100 / 50)
    roman = roman + 'X' * (num % 50 / 10)
  end 
  # build up ones and special cases
  if ones == 9
    roman = roman +'IX'
  elsif ones == 4
    roman = roman + 'IV'
  else
    roman = roman + 'V' * (num % 10 / 5)
    roman = roman + 'I' * (num % 5 / 1)  
  end 
   roman 
end