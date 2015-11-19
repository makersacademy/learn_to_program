def english_number number
  if number == 0
  return 'Zero'
end
	if number < 0
	return 'Please write a number greater than or equal to zero.'
end

num_string = ''
ones_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
tens_place = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
teens = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
beyond = [['hundred', 2], ['thousand', 3], ['million', 6], ['billion', 9], ['trillion', 12], ['quadrillion', 15], ['googol', 100]]

left = number
while beyond.length > 0
	beyond_pair = beyond.pop
	beyond_name = beyond_pair[0]
	beyond_base = 10 ** beyond_pair[1]
	write = left/beyond_base
	left = left - write*beyond_base
	
	if write > 0
	
		prefix = english_number write
		num_string = num_string + prefix + '' + beyond_name
		
		if left > 0
			num_string = num_string + ''
			end
		end
	end
	
write = left/10
left = left - write*10

if write > 0
	if ((write ==1) and (left > 0))
	num_string = num_string + teens[left-1]
	
	left = 0
else
	num_string = num_string + tens_place[write-1]
end

if left > 0
num_string = num_string + '-'
end
end

write = left
left = 0
if write > 0
num_string = num_string + ones_place[write-1]
end

num_string
end

puts english_number (0)
puts english_number (30)
puts english_number (110)
puts english_number (16)
puts english_number (100000000)
puts english_number (9436473921)

