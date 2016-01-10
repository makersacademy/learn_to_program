def old_roman_numeral num
  roman = ""
  roman << "M" * ( num / 1000 )
  five_hundreds = num % 1000
  roman << "D" *  ( five_hundreds / 500 )
  hundreds = five_hundreds % 500
  roman << "C" * ( hundreds / 100 )
  fifty = hundreds % 100
  roman << "L" * ( fifty / 50 )
  tens = fifty % 50
  roman << "X" * ( tens / 10 )
  fives = tens % 10
  roman << "V" * ( fives / 5 )
  roman << "I" * ( fives % 5 )
  roman
end