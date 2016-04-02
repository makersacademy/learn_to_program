class Integer

  def factorial
    factorial_recursive self
  end

  def factorial_recursive num
    if num < 0
      return "Factorial must be positive"
    end

    if num == 1
      1
    else
      num * factorial_recursive(num -1)
    end

  end

  def to_roman
    roman_numeral_key = {
      1000  => "M",
      900   => "CM",
      500   => "D",
      400   => "CD",
      100   => "C",
      90    => "XC",
      50    => "L",
      10    => "X",
      5     => "V",
      1     => "I"
    }

  roman_numeral_output = ""
  int_value = self

  roman_numeral_key.each do |key, value|
      if int_value / key >= 1
        (int_value / key).times do
          roman_numeral_output << value
          int_value -= key
        end
      end
    end
    roman_numeral_output
  end

end
