def roman_numeral num
  to_return = ""
  to_write = num
  letters = [[1000, "M"], [900, "CM"], [500, "D"], [400, "CD"], [100, "C"], [90, "XC"], [50, "L"], [40, "XL"], [10, "X"], [9, "IX"], [5, "V"], [4, "IV"], [1, "I"]]

while to_write != 0
    letters.each do |value|
      to_return << value[1] * (to_write / value[0])
      to_write = to_write % value[0]
    end
  end
  to_return
end