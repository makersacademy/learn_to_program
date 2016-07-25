require_relative '../ch09-writing-your-own-methods/old_school_roman_numerals.rb'

class Integer
  def to_roman
    old_roman_numeral(self) #use the old_roman_numeral method
  end

  def factorial
    return 1 if self == 1
    self * (self - 1).factorial #recursion
  end
end
