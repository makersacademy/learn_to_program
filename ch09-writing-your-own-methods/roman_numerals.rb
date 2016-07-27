def roman_numeral new_roman
  letter_num = [["M", 1000], ["CM", 900], ["D", 500], ["CD", 400], ["C", 100],
  ["XC", 90], ["L", 50], ["XL", 40], ["X", 10], ["IX", 9], ["V", 5], ["IV", 4], ["I", 1]]

  out = ""
  letter_num.each do |arr|
      l = arr[0]
      n = arr[1]
    out << l*(new_roman / n)
    new_roman = new_roman %  n
  end
  return out
end

puts roman_numeral(2044)
