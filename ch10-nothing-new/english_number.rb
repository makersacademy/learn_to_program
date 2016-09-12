def english_number number

if number < 0 # No negative numbers.

return 'Please enter a number that isn\'t negative.'

end

if number == 0

return 'zero'

end

# No more special cases! No more returns!

num_string = '' # This is the string we will return.

ones_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']

tens_place = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']

teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

# "left" is how much of the number # we still have left to write out.

# "write" is the part we are # writing out right now. # write and left...get it? :)

left = number
#NEW CODE START3
write = left/1000000000 # How many billions left?

left = left - write*1000000000 # Subtract off those billions.

if write > 0

# Now here's the recursion:

billions = english_number write

num_string = num_string + billions + ' billion'

if left > 0

# So we don't write 'one billionseventy million'...

num_string = num_string + ' '

end

end

#NEW CODE END3


#NEW CODE START2
write = left/1000000 # How many millions left?

left = left - write*1000000 # Subtract off those millions.

if write > 0

# Now here's the recursion:

millions = english_number write

num_string = num_string + millions + ' million'

if left > 0

# So we don't write 'one millionseventy thousand'...

num_string = num_string + ' '

end

end

#NEW CODE END2

#NEW CODE START1
write = left/1000 # How many thousands left?

left = left - write*1000 # Subtract off those thousands.

if write > 0

# Now here's the recursion:

thousands = english_number write

num_string = num_string + thousands + ' thousand'

if left > 0

# So we don't write 'nine thousandnine hundred'...

num_string = num_string + ' '

end

end

#NEW CODE END1
write = left/100 # How many hundreds left?

left = left - write*100 # Subtract off those hundreds.

if write > 0

# Now here's the recursion:

hundreds = english_number write

num_string = num_string + hundreds + ' hundred'

if left > 0

# So we don't write 'two hundredfifty-one'...

num_string = num_string + ' '

end

end

write = left/10 # How many tens left?

left = left - write*10 # Subtract off those tens.

if write > 0

if ((write == 1) and (left > 0))

# Since we can't write "tenty-two" instead of

# "twelve", we have to make a special exception

# for these.


num_string = num_string + teenagers[left-1]

# The "-1" is because teenagers[3] is

# 'fourteen', not 'thirteen'.

# Since we took care of the digit in the

# ones place already, we have nothing left to write.

left = 0

else

num_string = num_string + tens_place[write-1]

# The "-1" is because tens_place[3] is

# 'forty', not 'thirty'.

end

if left > 0

# So we don't write 'sixtyfour'...

num_string = num_string + '-'

end

end

write = left # How many ones left to write out?

left = 0 # Subtract off those ones.

if write > 0

num_string = num_string + ones_place[write-1]

# The "-1" is because ones_place[3] is

# 'four', not 'three'.

end

# Now we just return "num_string"...

num_string

end

print english_number( 0); print " "; print 0; puts
print english_number( 9); print " "; print 9; puts
print english_number( 10); print " "; print 10; puts
print english_number( 11); print " "; print 11; puts
print english_number( 17); print " "; print 17; puts
print english_number( 32); print " "; print 32; puts
print english_number( 88); print " "; print 88; puts
print english_number( 99); print " "; print 99; puts
print english_number(100); print " "; print 100; puts
print english_number(101); print " "; print 101; puts
print english_number(234); print " "; print 234; puts
print english_number(3211); print " "; print 3211; puts
print english_number(999999); print " "; print 999999; puts
print english_number(1000000000000); print " "; print 1000000000000; puts

print english_number(10001); print " "; print 10001; puts
print english_number(1070301); print " "; print 1070301; puts