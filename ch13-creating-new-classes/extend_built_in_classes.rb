class Integer

  def factorial
    self <= 1 ? 1 : self * (self - 1).factorial
  end

  def to_roman
    numeral_to_print = ''

    if self == 0
      numeral_to_print << 'Zero'
    else
      numeral_to_print << 'M' * (self/1000)
      numeral_to_print << 'D' * (self % 1000 / 500)
      numeral_to_print << 'C' * (self % 500 / 100)
      numeral_to_print << 'L' * (self % 100 / 50)
      numeral_to_print << 'X' * (self % 50 / 10)
      numeral_to_print << 'V' * (self % 10 / 5)
      numeral_to_print << 'I' * (self % 5)
    end

    return numeral_to_print
  end

end
