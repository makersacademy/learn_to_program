def old_roman_numeral num_roman
  letter_num = [["M", 1000], ["D", 500], ["C", 100], ["L", 50], ["X", 10], ["V", 5], ["I", 1]]
  out = ""

  letter_num.each do |arr|
      l = arr[0]
      n = arr[1]
    out << l*(num_roman / n)
    num_roman = num_roman %  n
  end
  return out
end

puts old_roman_numeral(2900)
