NUMS = [[1000, "M"],
        [900, "CM"],
        [500, "D"],
        [400, "CD"],
        [100, "C"],
        [90, "XC"],
        [50, "L"],
        [40, "XL"],
        [10, "X"],
        [5, "V"],
        [1, "I"]]

def old_roman_numeral num
  str = ""
  NUMS.each do |number, sub|
    while num >= number
      str << sub
      num -= number
    end
  end
  str
end
