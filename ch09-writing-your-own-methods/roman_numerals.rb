def roman_numeral num
 
  if num < 1
    return "The input number must be an integer greater than 0."
  end
  
  thous = (num / 1000)
  hunds = (num % 1000 / 100)
  tens  = (num % 100 / 10)
  ones  = (num % 10)

  roman = ""
  roman = roman + "M" * thous
  
  if hunds == 9
    roman = roman + 'CM'
  elsif hunds == 4 
    roman = roman + 'CD'
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
  
  return roman

end

puts roman_numeral(2000)
puts roman_numeral(1900)
puts roman_numeral(1600)
puts roman_numeral(1400)
puts roman_numeral(900)
puts roman_numeral(990)
puts roman_numeral(940)
puts roman_numeral(5)
puts roman_numeral(4)
puts roman_numeral(3)
puts roman_numeral(0.5)
puts roman_numeral(-500)

