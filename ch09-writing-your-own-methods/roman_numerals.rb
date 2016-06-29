def roman_numeral num
  if num >3000 || num <1
    puts "Please enter a number in between 1 and 3000"
  end

#could use round and upshift?
#upshift adds the element to the start of the array

#find digits eg. 1111 = 1000 100 10 1
thousands = (num / 1000)
hundreds = (num % 1000 / 100)
tens = (num % 100 / 10)
ones = (num % 10)

rom = []

rom << "M" * thousands
#same as exercise before but need to add 9/10 and 4/10 as exceptions
#I can be subtracted only from V and X
#X can be subtracted only from L and C
#C can be subtracted only from D and M
if hundreds == 9
  rom << "CM"
elsif hundreds == 4
  rom << "CD"
else
  rom << "D" * (num % 1000 / 500)
  rom << "C" * (num % 500 / 100)
end

#repeat hundreds "if statement" but with tens
if tens == 9
  rom << "XC"
elsif tens == 4
  rom << "XL"
else
  rom << "L" * (num % 100 / 50)
  rom << "X" * (num % 50 / 10)
end

#repeat exceptions with ones
if ones == 9
  rom << "IX"
elsif ones == 4
  rom << "IV"
else
  rom << "V" * (num % 10 / 5)
  rom << "I" * (num % 5 / 1)
end

rom.join.to_s

end

roman_numeral 4
roman_numeral 12
roman_numeral 2990
roman_numeral 2390
roman_numeral 1180
roman_numeral 1999
roman_numeral 150
roman_numeral 80
