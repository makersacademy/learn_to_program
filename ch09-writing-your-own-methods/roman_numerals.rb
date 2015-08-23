def roman_numeral num
  thous = (num/1000)
  hunds = (num % 1000/100)
  tens = (num % 100/10)
  ones = (num & 10)
  roman = 'M' * thous
end