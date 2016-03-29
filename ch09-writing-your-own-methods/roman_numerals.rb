def roman_numeral num
  # your code here
ones = "I"
four = "IV"
fives = "V"
nine = "IX"
tens = "X"
fifties = "L"
hundreds= "C"
five_hundreds = "D"
thousands = "M"
numsting =''

left = num
write = left/1000 # remainder after 1000s knocked off
left = left- write*1000 #thousands
numbstr = thousands * write
write = left/500
left = left- write*500
 numbstr = numbstr + (five_hundreds * write) # add/concatonate it to the numbstring
write = left/100
left = left- write*100
 numbstr = numbstr + (hundreds * write)
write = left/50
left = left- write*50
numbstr = numbstr + (fifties * write)
write = left/10
left = left- write*10

numbstr = numbstr + (tens * write)
  if left == 9
    return numbstr = numbstr + nine
  end

write = left/5
left = left- write*5
numbstr = numbstr + (fives * write)


write = left/1
  if write == 4
    numbstr = numbstr + four
    write = 0
  end

left = left- write*1
numbstr = numbstr + (ones * write)

# puts write
=begin
if num % 1000 == 0
x = 'M'*(num/1000) # M has to come first as object performing method on.


end
p num % 1000
=end
end

p roman_numeral 69
p roman_numeral 104
p roman_numeral 109
p roman_numeral 114