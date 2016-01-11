def roman_numeral(num)
  new_roman = ""                      # storage for answer
  
  #define the thousands/hundreds/tens/singles
  thousands = (num / 1000)
  hundreds = (num % 1000 / 100)
  tens = (num % 100 / 10)
  singles = (num % 10 )
  
  new_roman << "M" * thousands
  
  if hundreds == 9            # define 9 and 4 (the problem numbers) for each index (i.e thousands,hundreds,tens,singles)
    new_roman << "CM"         # in the hundreds, 9 is represented as CM so stick that into new roman string
  elsif hundreds == 4
    new_roman << "CD"
  else 
    new_roman << "D" * (num % 1000 / 500)
    new_roman << "C" * (num % 500 / 100)
  end
  
  if tens == 9
    new_roman << "XC"
  elsif tens == 4
    new_roman << "XL"
  else
    new_roman << "L" * (num % 100 / 50)
    new_roman << "X" * (num % 50 / 10)
  end
  
  if singles == 9
    new_roman << "IX"
  elsif singles == 4
    new_roman << "IV"
  else 
    new_roman << "V" * (num % 10 / 5)
    new_roman << "I" * (num % 5 / 1)
  end
  new_roman
end
puts roman_numeral(19)
puts roman_numeral(24)
puts roman_numeral(459)