NUMERALS = { M: 1000, D: 500, C: 100,
             L: 50, X: 10, V: 5, I: 1 }
def old_roman_numeral num
  return '' if num <= 0
  NUMERALS.each { |key, val| return key.to_s + old_roman_numeral(num - val) if num >= val }
end
