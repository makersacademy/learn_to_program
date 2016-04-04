def english_number(number)
	error = "Please do not give me negative numbers or floats!"

  	return error if number < 0
  	return "zero" if number == 0
	output = ""

ones_place = ['one', 'two', 'three','four', 'five', 'six', 'seven', 'eight', 'nine']
tens_place = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

scale = [['hundred', 2], ['thousand', 3], ['million', 6], ['billion', 9], ['trillion', 12], ['quadrillion', 15], ['quintillion', 18], ['sextillion', 21], ['septillion', 24], ['octillion', 27], ['nonillion', 30], ['decillion', 33],['undecillion', 36],['duodecillion', 39],['tredecillion', 42],['quattuordecillion', 45],['quindecillion', 48],['sexdecillion', 51],['septendecillion', 54],['octodecillion', 57],['novemdecillion', 60],['vigintillion', 63],['googol', 100]]

	left = number
	while scale.length > 0
		zil_pair = scale.pop
		zil_name = zil_pair[0]
		zil_base = 10 ** zil_pair[1]
		write = left/zil_base
		left = left - write*zil_base
		if write > 0
			prefix = english_number write
			output = output + prefix + " " + zil_name
			if left > 0
				output = output + " "
			end
		end
	end
	write = left/10
	left = left - write*10
	if write > 0
		if ((write == 1) and (left > 0))
			output = output + teenagers[left-1]
			left = 0
		else
			output = output + tens_place[write-1]
		end
		if left > 0
			output = output + '-'
		end
	end
	write = left
	left = 0
	if write > 0
		output = output + ones_place[write-1]
	end
output
end