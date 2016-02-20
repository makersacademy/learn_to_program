class Integer
  def to_roman
  letters = ""
  num = self

  romans = {
          "M" => 1000,
          "D" => 500,
          "C" => 100,
          "L" => 50,
          "X" => 10,
          "V" => 5,
          "I"  => 1
  }

  romans.each do |key, value|
    until num < value
      num -= value
      letters << key
    end
  end
  letters
  end

  def factorial
    (1..self).inject(:*)
  end
end