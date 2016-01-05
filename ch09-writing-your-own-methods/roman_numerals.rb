def roman_numeral num
  roman = ""
  roman << "M" * ( num / 1000 )
  five_hundreds = num % 1000
    if five_hundreds / 100 == 9
      roman << "CM"
    elsif five_hundreds / 100 == 4
      roman << "CD"
    else
      roman << "D" *  ( five_hundreds / 500 )
      hundreds = five_hundreds % 500
      roman << "C" * ( hundreds / 100 )
    end
  fifty = hundreds % 100
    if fifty / 10 == 9
      roman << "XC"
    elsif fifty / 10 == 4
      roman << "XL"
    else
      roman << "L" * ( fifty / 50 )
      tens = fifty % 50
      roman << "X" * ( tens / 10 )
    end
  fives = tens % 10
    if fives == 9
      roman << "IX"
    elsif fives == 4
      roman << "IV"
    else
      roman << "V" * ( fives / 5 )
      roman << "I" * ( fives % 5 )
    end
  roman
end