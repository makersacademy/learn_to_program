def roman_numeral num
  # your code here
  
  four_digit = (num / 1000)
  three_digit = (num % 1000 / 100)
  two_digit = (num % 100 / 10)
  one_digit = (num % 10 / 1)
  
  roman = 'M' * four_digit
  
  if three_digit == 4 
      roman = roman + 'CD'
  elsif three_digit == 9 
      roman = roman + 'CM'
  else
      roman = roman + 'C' * (num % 500 / 100)
      roman = roman + 'D' * (num % 1000 / 500)
  end
  
  if two_digit == 4
      return roman = roman + 'XL'
  elsif two_digit == 9
      return roman = roman + 'XC'
  else
      roman = roman + 'X' * (num % 50 / 10)
      roman = roman + 'L' * (num % 100 / 50)
  end
  
  if one_digit == 4
      return roman = roman + 'IV'
  elsif one_digit == 9
      return roman = roman + 'IX'
  else
      roman = roman + 'V' * (num % 10 / 5)
      roman = roman + 'I' * (num % 5 / 1)
  end
  puts roman
end
  # your code here
  # roman = roman + "M" * (num / 1000)
  # roman = roman + "D" * (num % 1000 / 500)
  # roman = roman + "C" * (num % 500 / 100)
  # roman = roman + "L" * (num % 100 / 50)
  # roman = roman + "X" * (num % 50 / 10)
  # roman = roman + "V" * (num % 10 / 5)
  # roman = roman + "I" * (num % 5 / 1)
  # only 4-9, 40-90 and 400-900 only want 1000/100 ... 100/10 ... 10/1
  #***IV not VI*** Do subtractable number first followed by total being subtracted
  # M = 1000
  # D = 500
  # C = 100
  # L = 50
  # X = 10
  # V = 5
  # I = 1
  # want to make it so that 4 = IV (5-1) 
  # possible numbers 4 and 9, 40 and 90, 400 and 900
  # possible combinations MD or MC/ CL or CX / XV or XI
  # single digit, double digit, triple digit (M=1000)
  # hundreds... 900 in roman 1000-100=M-C / 400 in R 500-100 = D-C
  # tens...90 in R 100-10=C-X / 40 in R 50-10=L-X
  # single digits ... 9 = 10-1(X-I) / 4 = 5-1(V-I)