def old_roman_numeral num
  numerals = [[1000, "M"], [500, "D"], [100, "C"], [50, "L"],
    [10, "X"], [5, "V"], [1, "I"]]
  numerals.map { |numeral|
    multi = num / numeral[0]
    num -= (numeral[0] * multi)
    numeral[1] * multi
  }.join('')
end
