def roman_numeral num
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
  4_digit = (num / 1000)
  3_digit = (num % 1000 / 100)
  2_digit = (num % 100 / 10)
  1_digit = (num % 10 / 1)
  
  roman = "M" * 4_digit
  # hundreds... 900 in roman 1000-100=M-C / 400 in R 500-100 = D-C
  if 3_digit == 4 
      return roman = roman + "CD"
  elsif 3_digit == 9 
      return roman = roman + "CM"
  end
  # tens...90 in R 100-10=C-X / 40 in R 50-10=L-X
  if 2_digit == 4
      return roman = roman + "XL"
  elsif 2_digit == 9
      return roman = roman + "XC"
  end
  #single digits ... 9 = 10-1(X-I) / 4 = 5-1(V-I)
  if 1_digit == 4
      return roman = roman + "IV"
  elsif 1_digit == 9
      return roman = roman + "IX"
  end
  puts roman
end
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