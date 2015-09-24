def english_number number
if number < 0 # No negative numbers.
    return 'Please enter a number that isn\'t negative.'
end
if number == 0
    return 'zero'
end
num_string = ''
ones_place = ['one','two','three','four','five','six','seven','eight','nine']
tens_place = ['ten','twenty','thirty','forty','fifty','sixty','seventy','eighty','ninety']
teenagers =  ['eleven','twelve','thirteen','fourteen', 'fifteen', 'sixteen',
              'seventeen', 'eighteen', 'nineteen']
left = number
write = left/10000000000000000000000000000000000000000000000
left = left - write*10000000000000000000000000000000000000000000000
if write > 0 
	quindecillion = english_number write 
	num_string = num_string + quindecillion + ' quindecillion'
	if left > 0
		num_string = num_string + ' '
	end
end
write = left/1000000000000000
left = left - write*1000000000000000
if write > 0 
	trillion = english_number write 
	num_string = num_string + trillion + ' quattuordecillion'
	if left > 0
		num_string = num_string + ' '
	end
end
write = left/1000000000000
left = left - write*1000000000000
if write > 0 
	trillion = english_number write 
	num_string = num_string + trillion + ' trillion'
	if left > 0
		num_string = num_string + ' '
	end
end
write = left/1000000000
left = left - write*1000000000
if write > 0 
	billion = english_number write 
	num_string = num_string + billion + ' billion'
	if left > 0
		num_string = num_string + ' '
	end
end
write = left/1000000
left = left - write*1000000
if write > 0 
	million = english_number write 
	num_string = num_string + million + ' million'
	if left > 0
		num_string = num_string + ' '
	end
end
write = left/1000
left = left - write*1000
if write > 0 
	thousand = english_number write 
	num_string = num_string + thousand + ' thousand'
	if left > 0
		num_string = num_string + ' '
	end
end
write = left/100
left = left - write*100 
if write > 0
    hundreds = english_number write
    num_string = num_string + hundreds + ' hundred'
    if left > 0
        num_string = num_string + ' '
    end
end
write = left/10
left = left - write*10
if write > 0
    if write == 1 && left > 0
        num_string = num_string + teenagers[left-1]
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
# english_number as above, plus this:
num_at_start = 23
# change to 9999 if you want
num_bot = proc { |n| "#{english_number n} bottle#{n == 1 ? '' : 's'}" }
num_at_start.downto(2) do |num|
puts "#{num_bot[num]} of beer on the wall, #{num_bot[num]} of beer!".capitalize
puts "Take one down, pass it around, #{num_bot[num-1]} of beer on the wall!"
end
puts "#{num_bot[1]} of beer on the wall, #{num_bot[1]} of beer!".capitalize
puts "Take one down, pass it around, no more bottles of beer on the wall!"