#def romanize(number)
#  conversions = {
#    1000 => 'M',
#    900 => 'CM',
#    500 => 'D',
#    400 => 'CD',
#    100 => 'C',
#    90 => 'XC',
#    50 => 'L',
#    40 => 'XL',
#    10 => 'X',
#    9 => 'IX',
#    5 => 'V',
#    4 => 'IV',
#    1 => 'I',
#  }

#  result = ''

#  while number > 0
#    conversions.each do |num, letter|
#      if number / num >= 1
#        result << letter
#        number -= num
#        break

#      end
#    end
#  end

#  result
#end

#p romanize 1010
#p romanize 400
#p romanize 90
#p romanize 40
#p romanize 44

def roman_numeral num
  thous = (num / 1000)
  hunds = (num % 1000 / 100)
  tens  = (num % 100 / 10)
  ones  = (num % 10)

  roman = 'M' * thous

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
    roman = romann + 'XL'
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
  roman
end
