class Integer
  # factorials
  def factorial
    if self < 0
      return 'You can\'t take the factorial of a negative number!'
    elsif self <= 1
      return 1
    else
      self * (self-1).factorial
    end
  end
  #(old school) roman numerals
  def to_roman
    roman = ""
    roman << "M" * ( self / 1000 )
    five_hundreds = self % 1000
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
end