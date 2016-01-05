def old_roman_numeral num
  to_return = ""
  to_write = num
  letters = [[1000, "M"], [500, "D"], [100, "C"], [50, "L"], [10, "X"], [5, "V"], [1, "I"]]

  while to_write != 0
    letters.each do |value|
      to_return << value[1] * (to_write / value[0])
      to_write = to_write % value[0]
    end
  end
  to_return
end