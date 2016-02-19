#Aim: take in a roman numeral, convert it to an integer
# - See if roman contains MDCLXVI - ergo, is a 'proper' roman numeral
# - See if roman contains special cases (900, 400, 90, 40, 9, 4)
#
def roman_to_integer roman
  puts "Please enter a valid roman numeral" if roman =~ (/[^MDCLXVI]/i)
  roman = roman.upcase
  integer = 0

  if roman.include?("CM")
    roman.sub!("CM", "")
    integer = integer + 900
  end

  if roman.include?("CD")
    roman.sub!("CD", " ")
    integer = integer + 400
  end

  if roman.include?("XC")
    roman.sub!("XC", " ")
    integer = integer + 90
  end

  if roman.include?("XC")
    roman.sub!("XC", " ")
    integer = integer + 40
  end

  if roman.include?("IX")
    roman.sub!("IX", " ")
    integer = integer + 9
  end

  if roman.include?("IV")
    roman.sub!("IV", " ")
    integer = integer + 4
  end
  integer = integer + 1000*(roman.count "M")
  integer = integer + 500*(roman.count "D")
  integer = integer + 100*(roman.count "C")
  integer = integer + 50*(roman.count "L")
  integer = integer + 10*(roman.count "X")
  integer = integer + 5*(roman.count "V")
  integer = integer + (roman.count "I")
  return integer
end
