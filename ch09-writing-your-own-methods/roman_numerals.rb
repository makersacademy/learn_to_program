def roman_numeral num

  #set variables for the position of thousands, hundreds, tens and single digits
  thousands = num / 1000
  hundreds = num % 1000 / 100
  tens = num % 100 / 10
  single = num % 10 / 1

  #print thousands
  numString = ''

  numString = 'M' * thousands

  #printing hundreds - with special case of 4 or 9 and then all others

if (hundreds == 9) || (hundreds == 4)
  if hundreds == 9
    numString = numString + 'CM'
  else
    numString = numString + 'D'
  end
else
  numString = numString + 'D' * (num % 1000 / 500) + 'C' * (num % 500 / 100)
end

#printing 10s - with special case of 4 or 9 and then all others

if (tens == 9) || (tens == 4)
  if tens == 9
    numString = numString + 'XC'
  else
    numString = numString + 'XL'
  end
else
  numString = numString + 'L' * (num % 100 / 50) + 'X' * (num % 50 / 10)
end

#printing 1s - with special case of 4 or 9 and then all others

if single == 9
  numString = numString + 'IX'
elsif single == 4
  numString = numString + 'IV'
else
  numString = numString + 'V' * (num % 10 / 5) + 'I' * (num % 5)
end
  numString
end

#Chris Pine's answers call the method by puts (roman_numeral(1966)) - is this necessary?

puts roman_numeral(1966)
puts roman_numeral(2949)
puts roman_numeral(1324)
