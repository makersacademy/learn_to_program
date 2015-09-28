def roman_numeral num

  a = [[1000, "M"], [900, "CM"], [500, "D"], [400, "CD"], [100, "C"],[90,"XC"], [50, "L"],[40,"XL"], [10, "X"],[9,"IX"], [5, "V"],[4,"IV"] ,[1, "I"]]

  i = num
  to_print = ''
  b = 0
  while i != 0
    to_cut = (i - (i % a[b][0]))
    to_print << a[b][1] * (to_cut / a[b][0])
    i = i - to_cut
    b += 1
  end

  to_print

end

