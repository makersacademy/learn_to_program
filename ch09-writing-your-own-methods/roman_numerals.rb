# LEARNING TO PROGRAM WITH CHRIS PINE, 9.5 ex 3
###############################################
# "Modern" Roman numerals. Eventually, someone thought it would be terribly
# clever if putting a smaller number before a larger one meant you
# had to subtract the smaller one. As a result of this development, you must
# now suffer. Rewrite your previous method to return the new-style Roman
# numerals so when someone calls roman_numeral() 4, it should return 'IV'.

def roman_numeral num
  roman_to_arabic = {
    M: 1_000,   CM: 900,  D: 500,   CD: 400,
    C: 100,     XC: 90,   L: 50,    XL: 40,
    X: 10,      IX: 9,    V: 5,     IV: 4,
    I: 1
  }

  return '' if num <= 0
  roman_to_arabic.each { |key, val| return key.to_s + roman_numeral(num - val) if num >= val }
end
