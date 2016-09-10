class Integer
  def shuffle
    self.sort_by{rand}
  end

  def factorial
    if self <= 1
      1
    else
      self * (self-1).factorial
    end
  end

  def to_roman
    roman_number = ''
    roman_number = roman_number + 'M' * (self / 1000)
    roman_number = roman_number + 'D' * (self % 1000 / 500)
    roman_number = roman_number + 'C' * (self % 500 / 100)
    roman_number = roman_number + 'L' * (self % 100 / 50)
    roman_number = roman_number + 'X' * (self % 50 / 10)
    roman_number = roman_number + 'V' * (self % 10 / 5)
    roman_number = roman_number + 'I' * (self % 5 / 1)

    roman_number

  end
end
