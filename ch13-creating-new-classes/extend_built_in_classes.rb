require_relative '../ch09-writing-your-own-methods/old_school_roman_numerals.rb'
require_relative '../ch10-nothing-new/shuffle.rb'
class Integer
  def factorial
    (1..self).inject(:*) || 1
  end
  def to_roman
    old_roman_numeral(self)
  end
end

p 5.factorial
p 9.to_roman
