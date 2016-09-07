def old_roman_numeral(n)
  roman = ""

  if n(1..3)
    roman = roman + "I" * ( n % 5 / 1) 
  if n






  thousand = roman + "M" * ( n / 1000 )

  if n(900..999)
    roman = "DM" + thousand

  roman = roman + "D" * ( n % 1000 / 500 ) 
  roman = roman + "C" * ( n % 500 / 100 )
  roman = roman + "L" * ( n % 100 / 50 )
  roman = roman + "X" * ( n % 50 / 10 )
  roman = roman + "V" * ( n % 10 / 5 )
  roman = roman + "I" * ( n % 5 / 1)

  return roman

end



