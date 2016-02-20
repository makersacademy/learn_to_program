def roman_numeral num
  str = ""
thousands = num / 1000
hundreds = (num % 1000) / 100
tens = (num % 100) / 10
ones = (num % 10)

# add thousands as doesn't need adapting
str << "M" * thousands

case hundreds
when 9
  str << "CM"
when 4
  str << "CD"
else
  str << "D" * (num % 1000 / 500)
  str << "C" * (num % 500 / 100)
end

case tens
when 9
  str << "XC"
when 4
  str << "XL"
else
  str << "L" * (num % 100 / 50)
  str << "X" * (num % 50 / 10)
end

case ones
when 9
  str << "IX"
when 4
  str << "IV"
else
  str << "V" * (num % 10 / 5)
  str << "I" * (num % 5 / 1)
end

str
end

puts roman_numeral 110
