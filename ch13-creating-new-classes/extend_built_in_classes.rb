class Array

  def shuffle
    shuffled = []
    while self.length >= 1
      shuffled << self.delete_at(rand(0...self.length))
    end
  shuffled
  end

end

class Integer

  def factorial
    if self < 0
      return "You can't take the factor"
    end

    if self <= 1
      1
    else
      self * (self-1).factorial
    end
  end

  def roman_numeral
    roman = []

    thousands = (self/1000)
    hundreds = (self%1000/100)
    tens = (self%100/10)
    ones = (self%10)

    roman << "M" * thousands

    if hundreds == 9
      roman << "CM"
    elsif hundreds == 4
      roman << "CD"
    else
      roman << "D" * (self%1000/500)
      roman << "C" * (self%500/100)
    end

    if tens == 9
      roman << "XC"
    elsif tens == 4
      roman << "XL"
    else
      roman << "L" * (self%100/50)
      roman << "X" * (self%50/10)
    end

    if ones == 9
      roman << "IX"
    elsif ones == 4
      roman << "IV"
    else
      roman << "V" * (self%10/5)
      roman << "I" * (self%5)
    end

    roman.join.to_s

  end

  def to_roman
    roman = []

    roman << "M" * (self/1000)
    roman << "D" * (self%1000/500)
    roman << "C" * (self%500/100)
    roman << "L" * (self%100/50)
    roman << "X" * (self%50/10)
    roman << "V" * (self%10/5)
    roman << "I" * (self%5)
    roman.join.to_s
  end

end

p ['a', 'b', 'c', 'd'].shuffle

p 30.factorial

p 1999.roman_numeral

p 4.to_roman
