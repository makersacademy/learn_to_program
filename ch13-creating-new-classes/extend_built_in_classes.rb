
#I understand this but couldn't get my code to work in the class, I think it was because it was written in a way that would have to modify self.
class Integer
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
