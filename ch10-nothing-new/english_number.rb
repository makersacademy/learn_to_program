def english_number number
 	if number < 0 
 		return "Please enter a number that isn't negative."

	end

	if number == 0
		return 'zero'

	end


num_string = ''

end

ones_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']

tens_place = ['tens', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']

teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

left = number

howmanyof = left/100

left = left - howmanyof*100

if howmanyof > 0