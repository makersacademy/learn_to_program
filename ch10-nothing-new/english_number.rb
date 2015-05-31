def english_number number
  # take an english number higher than 0
  if number < 0
  	return "higher number please"
  end
  if number == 0
  return "ZERO"
  end

return_string = ''
ones = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
tens = ['ten','twenty','thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
teens = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

#left is the amount of the number left to check
left = number
#modifier is how much we are changing the number by
modifier = left/100

left = left - modifier*100 #this is the left number minus the number of 100s

if modifier > 0
	hundreds = english_number modifier
	return_string = return_string + hundreds + ' hundred'
	if left > 0
		return_string = return_string + ' '
	end
end

modifier = left/10
left = left - modifier*10

if modifier > 0
	if (modifier == 1) and (left > 0)
		return_string = return_string + teens[left-1]
		left = 0
	else
		return_string = return_string + tens[modifier-1]
	end

	if (left > 0)
		return_string = return_string + ' '
	end
end

modifier = left
left = 0

if modifier > 0
	return_string = return_string + ones[modifier-1]
end
return return_string
end


puts english_number 200

puts english_number 500

puts english_number 876