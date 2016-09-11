class Integer
  
  def factorial
    raise 'Must not use negative integer' if self < 0
    (self <= 1) ? 1 : self * (self-1).factorial
  end

  def to_roman
    roman_numeral = ""

    roman_numeral = roman_numeral + "M" * (self / 1000)
    roman_numeral = roman_numeral + "D" * (self % 1000 / 500)
    roman_numeral = roman_numeral + "C" * (self % 500 / 100)
    roman_numeral = roman_numeral + "L" * (self % 100 /50)
    roman_numeral = roman_numeral + "X" * (self % 50 / 10)
    roman_numeral = roman_numeral + "V" * (self % 10 / 5)
    roman_numeral = roman_numeral + "I" * (self % 5 / 1)

    roman_numeral
  end
end

puts 26.to_roman
