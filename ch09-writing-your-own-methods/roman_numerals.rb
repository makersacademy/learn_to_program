def roman_numeral num
  thousands = (num /1000)
  hundreds = (num % 1000 / 100)
  tens = (num % 100 / 10)
  ones = (num % 10)

  result = "M" * thousands

  case hundreds
  when 9
    result << 'CM'
  when 4
    result << 'CD'
  else
    result << 'D' * (num % 1000 / 500)
    result << 'C' * (num % 500 / 100)
  end

  case tens
  when 9
    result << 'XC'
  when 4
    result << 'XL'
  else
    result << 'L' * (num % 100 / 50)
    result << 'X' * (num % 50 / 10)
  end

  case ones
  when 9
    result << 'IX'
  when 4
    result << 'IV'
  else
    result << 'V' * (num % 10 / 5)
    result << 'I' * (num % 5 / 1)
  end
  result
end