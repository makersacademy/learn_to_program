def roman_numeral num
  thousands = (num/1000)
  hundreds = (num%1000/100)
  tens = (num%100/10)
  ones = (num%10)

  roman = 'M' * thousands

  case hundreds
  when 9
    roman += 'CM'
  when 4
    roman += 'CD'
  else
    roman += 'D' * (num % 1000/500)
    roman += 'C' * (num % 500/100)
  end

  case tens
  when 9
    roman += 'XC'
  when 4
    roman += 'XL'
  else
    roman += 'L' * (num % 100/50)
    roman += 'X' * (num % 50/10)
  end

  case ones
  when 9
    roman += 'IX'
  when 4
    roman += 'IV'
  else
    roman += 'V' * (num % 10/5)
    roman += 'I' * (num % 5)
  end
end
