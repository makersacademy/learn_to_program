def old_roman_numeral(num)
  numerals = [[1000, "M"],
              [500, "D"],
              [100, "C"],
              [50, "L"],
              [10, "X"],
              [5, "V"],
              [1, "I"]]

  roman = ""
  return "nulla" if num == 0
  numerals.each do |n|
    while num >= n[0]
      roman += n[1]
      num -= n[0]
    end
  end
  roman
end
