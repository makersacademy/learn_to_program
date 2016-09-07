def old_roman_numeral(n)
  roman = ""

  roman = roman + "M" * ( n / 1000 )
  roman = roman + "D" * ( n % 1000 / 500 ) 
  roman = roman + "C" * ( n % 500 / 100 )
  roman = roman + "L" * ( n % 100 / 50 )
  roman = roman + "X" * ( n % 50 / 10 )
  roman = roman + "V" * ( n % 10 / 5 )
  roman = roman + "I" * ( n % 5 / 1)

  return roman

end

old_roman_numeral(4)
