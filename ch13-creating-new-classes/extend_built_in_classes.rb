require_relative '../ch09-writing-your-own-methods/old_school_roman_numerals'


class Integer
  def factorial
    fact(self, 1)
  end

  def fact(n, acc)
  return acc if n <= 1
    fact(n-1, n*acc)
  end

  def to_roman
    old_roman_numeral self
  end
end

