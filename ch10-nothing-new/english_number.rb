def english_number number

	if number < 0 
  return 'Please enter a number that isn\'t negative.'
	end

	if number == 0
		return 'zero'
	end

num_string = '' 

ones_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']

tens_place = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']

teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

left = number




             
              
              
              write = left/(("1"+"0"*48)).to_i
left = left - write*(("1"+"0"*48)).to_i

if write > 0
	quindecillion = english_number write
	num_string = num_string + quindecillion + ' quindecillion'

	if left > 0
		num_string = num_string + ' '
	end
end
#['quattuordecillion', 45],
 write = left/(("1"+"0"*45)).to_i
left = left - write*(("1"+"0"*45)).to_i

if write > 0
	quattuordecillion = english_number write
	num_string = num_string + quattuordecillion + ' quattuordecillion'

	if left > 0
		num_string = num_string + ' '
	end
end

              #['tredecillion', 42],
 write = left/(("1"+"0"*42)).to_i
left = left - write*(("1"+"0"*42)).to_i

if write > 0
	tredecillion = english_number write
	num_string = num_string + tredecillion + ' tredecillion'

	if left > 0
		num_string = num_string + ' '
	end
end
              #['duodecillion', 39],
 write = left/(("1"+"0"*39)).to_i
left = left - write*(("1"+"0"*39)).to_i

if write > 0
	duodecillion = english_number write
	num_string = num_string + duodecillion + ' duodecillion'

	if left > 0
		num_string = num_string + ' '
	end
end

              #['undecillion', 36],

 write = left/(("1"+"0"*36)).to_i
left = left - write*(("1"+"0"*36)).to_i

if write > 0
	undecillion = english_number write
	num_string = num_string + undecillion + ' undecillion'

	if left > 0
		num_string = num_string + ' '
	end
end

              #['decillion', 33],
 write = left/(("1"+"0"*33)).to_i
left = left - write*(("1"+"0"*33)).to_i

if write > 0
	decillion = english_number write
	num_string = num_string + decillion + ' decillion'

	if left > 0
		num_string = num_string + ' '
	end
end

              #['nonillion', 30],
 write = left/(("1"+"0"*30)).to_i
left = left - write*(("1"+"0"*30)).to_i

if write > 0
	nonillion = english_number write
	num_string = num_string + nonillion + ' nonillion'

	if left > 0
		num_string = num_string + ' '
	end
end

              #['octillion', 27],
 write = left/(("1"+"0"*27)).to_i
left = left - write*(("1"+"0"*27)).to_i

if write > 0
	octillion = english_number write
	num_string = num_string + octillion + ' octillion'

	if left > 0
		num_string = num_string + ' '
	end
end

              #['septillion', 24],
 write = left/(("1"+"0"*24)).to_i
left = left - write*(("1"+"0"*24)).to_i

if write > 0
	septillion = english_number write
	num_string = num_string + septillion + ' septillion'

	if left > 0
		num_string = num_string + ' '
	end
end

              #['sextillion', 21],
 write = left/(("1"+"0"*21)).to_i
left = left - write*(("1"+"0"*21)).to_i

if write > 0
	sextillion = english_number write
	num_string = num_string + sextillion + ' sextillion'

	if left > 0
		num_string = num_string + ' '
	end
end
#['quintillion', 18],
 write = left/(("1"+"0"*18)).to_i
left = left - write*(("1"+"0"*18)).to_i

if write > 0
	quintillion = english_number write
	num_string = num_string + quintillion + ' quintillion'

	if left > 0
		num_string = num_string + ' '
	end
end

write = left/(("1"+"0"*15)).to_i
left = left - write*(("1"+"0"*15)).to_i

if write > 0
	quadrillion = english_number write
	num_string = num_string + quadrillion + ' quadrillion'

	if left > 0
		num_string = num_string + ' '
	end
end


write = left/1000000000000
left = left - write*1000000000000

if write > 0
	trillions = english_number write
	num_string = num_string + trillions + ' trillion'

	if left > 0
		num_string = num_string + ' '
	end
end

write = left/1000000000
left = left - write*1000000000

if write > 0
	billions = english_number write
		num_string = num_string + billions + ' billion'

	if left > 0
		num_string = num_string + ' '
	end
end

write = left/1000000
left = left - write*1000000

if write > 0
	millions = english_number write
	num_string = num_string + millions + ' million'

	if left > 0
		num_string = num_string + ' '
	end
end




write = left/1000
left = left - write*1000 


if write > 0

	thousands = english_number write
	num_string = num_string + thousands + ' thousand'

	if left > 0
		num_string = num_string + ' '
	end

end



write = left/100 
left = left - write*100 


if write > 0

	hundreds = english_number write
	num_string = num_string +  hundreds + ' hundred'

	if left > 0
		num_string = num_string + ' '
	end
end

write = left/10 
left = left - write*10 

if write > 0
	if ((write == 1) and (left > 0))
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
puts english_number( 0)

puts english_number( 9)

puts english_number( 10)

puts english_number( 11)

puts english_number( 17)

puts english_number( 32)

puts english_number( 88)

puts english_number( 99)

puts english_number(100)

puts english_number(101)

puts english_number(234)

puts english_number(3211)

puts english_number(999999)

puts english_number(1000000000000)

puts english_number(10000000000000000)
