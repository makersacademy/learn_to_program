# “Modern” Roman numerals. Eventually, someone thought it would be terribly
# clever if putting a smaller number before a larger one meant you
# had to subtract the smaller one. As a result of this development, you must
# now suffer. Rewrite your previous method to return the new-style Roman
# numerals so when someone calls roman_numeral 4, it should return 'IV'.

def roman_numeral num
  roman_numeral_key = {
    1000  => "M",
    900   => "CM",
    500   => "D",
    400   => "CD",
    100   => "C",
    90    => "XC",
    50    => "L",
    10    => "X",
    9     => "IX",
    5     => "V",
    4     => "IV",
    1     => "I"
  }

roman_numeral_output = ""

roman_numeral_key.each do |key, value|
    if num / key >= 1
      (num / key).times do
        roman_numeral_output << value
        num -= key
      end
    end
  end
  roman_numeral_output
end
