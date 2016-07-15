def roman_numeral num
  # I =1 V=5 X=10 L=50 C=100 D=500 M=1000
  # orn stands for old roman numeral
orn = ""

while num >= 1000
  orn += 'M' if num % 1000 != num
  num = num -= 1000
end
while num >= 500
orn += 'D' if num % 500 != num
num = num -= 500
end
while num >= 100
orn += 'C' if num % 100 != num
num = num -= 100
end
while num >= 50
orn += 'L' if num % 50 != num
num = num -= 50
end
while num >= 10
orn += 'X' if num % 10 != num
num = num -= 10
end
while num >= 5
orn += 'V' if num % 5 != num
num = num -= 5
end
while num >= 1
orn += 'I' if num % 1 != num
num = num -= 1
end
orn.sub! 'VIIII', 'IX'
orn.sub! 'IIII', 'IV'
return orn
end

puts roman_numeral(2016)
puts roman_numeral(1001)
puts roman_numeral(1013)
puts roman_numeral(113)
puts roman_numeral(1019)
puts roman_numeral(514)
puts roman_numeral(109)
