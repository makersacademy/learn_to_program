NUMERALS = { M: 1000, CM: 900, D: 500, CD: 400, C: 100, XC: 90,
             L: 50, XL: 40, X: 10, IX: 9, V: 5, IV: 4, I: 1 }
def roman_numeral num
  return '' if num <= 0
  NUMERALS.each { |key, val| return key.to_s + roman_numeral(num - val) if num >= val }
end
