require_relative '/Users/julia/Desktop/test/learn_to_program/ch09-writing-your-own-methods/roman_numerals.rb'
require_relative '/Users/julia/Desktop/test/learn_to_program/ch10-nothing-new/shuffle.rb'
class Integer
  def factorial
    (1..self).inject(:*) || 1
  end
  def to_roman
    roman_numeral(self)
  end
end

p 5.factorial
p 19.to_roman

class Array
def shuf
shuffle
end
end

p [1 ,2 ,3 ,4].shuf
