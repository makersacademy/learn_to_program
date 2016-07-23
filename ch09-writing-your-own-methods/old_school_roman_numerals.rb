def old_roman_numeral num
  num_roman =""
  roman_a = [[1000, "M"], [500, "D"], [100, "C"], [50, "L"], [10, "X"], [5, "V"], [1, "I"]]
  roman_a.each { |elem| num_roman, num = num_roman + elem[1] * (num / elem[0]), num % elem[0] }
  num_roman
end

print old_roman_numeral(2999)
puts ""
print old_roman_numeral(1765)
puts ""
print old_roman_numeral(333)
puts ""
