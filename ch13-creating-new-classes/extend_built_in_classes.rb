class Integer
  def factorial
    (1..self).inject(:*)
  end

  def to_roman
    output_roman = ""
    thousand = self / 1000
    hundred = self % 1000 / 100
    tens = self % 100 / 10
    ones = self % 10
    output_roman << "M" * thousand
    output_roman << "D" if hundred >= 5
    output_roman << "C" * (hundred % 5)
    output_roman << "L" if tens >= 5
    output_roman << "X" * (tens % 5)
    output_roman << "V" if ones >= 5
    output_roman << "I" * (ones % 5)
    output_roman
  end
end

