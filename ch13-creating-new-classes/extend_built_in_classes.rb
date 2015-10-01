class Integer
  def to_roman
    conversion = { 1000 => 'M', 500 => 'D', 100 => 'C',
                  50 => 'L', 10 => 'X', 5 => 'V', 1 => 'I' }
    answer = ''
    num = self
    conversion.each { |key, value|
      answer << value * (num / key)
      num = num % key
    }

    answer
  end

  def factorial
    if self < 0
      return 'You can\'t take the factorial of a negative number!'
    end
    if self <= 1
      1
    else
      self * (self - 1).factorial
    end
  end
end
