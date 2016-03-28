def old_roman_numeral num
  # your code here
ones = "I"
fives = "V"
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
write = left/5
left = left- write*5
numbstr = numbstr + (fives * write)
write = left/1
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


p old_roman_numeral 1

