def roman_numeral num
  roman = ''
  thous = (num        / 1000) 
  hunds = (num % 1000 / 100) 
  tens  = (num % 100  / 10)
  ones  = (num % 10   / 1)

  if thous > 0
    roman = 'M' * thous
  end
  if    hunds == 9
    roman = roman + 'CM'
  elsif hunds >= 5 
    roman = roman + 'D' + 'C' * (hunds - 5)
  elsif hunds == 4
    roman = roman + 'CD'
  elsif hunds  < 4
    roman = roman + 'C' * hunds
  end
  if    tens  == 9
    roman = roman + 'XC'
  elsif tens  >= 5
    roman = roman + 'L' + 'X' * (tens - 5)
  elsif tens  == 4
    roman = roman + 'XL'
  elsif  tens  < 4
    roman = roman + 'X' * tens
  end
  if    ones  == 9
    roman = roman + 'IX'
  elsif ones  >= 5 
    roman = roman + 'V' + 'I' * (ones - 5)
  elsif ones  == 4
    roman = roman + 'IV'
  elsif ones   < 4
    roman = roman + 'I' * ones
  end        
  roman


  
end

puts roman_numeral 1000
