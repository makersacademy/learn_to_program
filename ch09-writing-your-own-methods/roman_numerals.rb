=begin

“Modern” Roman numerals. Eventually, someone thought it would be ter-
ribly clever if putting a smaller number before a larger one meant you
had to subtract the smaller one. As a result of this development, you must
now suffer. Rewrite your previous method to return the new-style Roman
numerals so when someone calls roman_numeral 4 , it should return ' IV '.

=end

def roman_numeral num
  # your code here
  letters = { M:1000, CM: 900, D:500, CD:400, C:100, XC: 90, L: 50, XL: 40, X: 10, IX: 9, V: 5, IV: 4, I: 1 }

  nb_digits_roman = []
  result = ""

  letters.values.each_with_index do |value,index|
    digit = num / value
    result += letters.keys[index].to_s*digit
    num -= digit*value
  end
  result
end

