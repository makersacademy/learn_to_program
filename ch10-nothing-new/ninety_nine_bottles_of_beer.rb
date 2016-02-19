def beer_bottles number
	while number > 2 do
		lyrics_number = englishNumber number
		one_less = englishNumber (number-1)
		puts "#{lyrics_number.capitalize} bottles of beer on the wall, #{lyrics_number} bottles of beer."
		puts "Take one down and pass it around, #{one_less} bottles of beer on the wall."
		number -= 1
	end

  puts "Two bottles of beer on the wall, two bottles of beer."
  puts "Take one down, pass it around, one bottle of beer on the wall."
  puts "One bottle of beer on the wall, one bottle of beer."
	puts "Take one down and pass it around, no more bottles of beer on the wall."
end

def englishNumber number
	if number < 0
		return "Please enter a number that isn't negative."
	end

	if number == 0
		return "zero"
	end

	numString = ""

	onesPlace = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
	tensPlace = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
	teenagers = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]

	left = number
	write = left/1000000
	left = left - write*1000000

	if write > 0
		millions = englishNumber write
		numString = numString + millions + " million"

		if left > 0
			numString = numString + " "
		end
	end

	write = left/1000
	left = left - write*1000
	# If number < 1000, for example 345, then write = 0, "left" on the last line would be 345 - 0*0 = 345, which is still "number".

	if write > 0
		# in which case numbers smaller than 1000 will skip this procedure
		thousands = englishNumber write
		# method calling itself, but using "write" instead of "number"
		numString = numString + thousands + " thousand"

		if left > 0
			numString = numString + " "
		end
	end

	write = left/100
	left = left - write*100

	if write > 0
		hundreds = englishNumber write
		numString = numString + hundreds + " hundred"

		if left > 0
			numString = numString + " and "
		end
	end

	write = left/10
	left = left - write*10

	if write > 0
		if ( (write == 1) and (left > 0) )
		# consider the "teenager" numbers first
			numString = numString + teenagers[left-1]
			# as index numbers start at zero and values start at "eleven"
			left = 0
			# make left 0 as we have taken care of the last digit already
		else
			numString = numString + tensPlace[write-1]
		end

		if left > 0
			numString = numString + "-"
			# to write "sixty-four"
		end
	end

	write = left
	left = 0

	if write > 0
		numString = numString + onesPlace[write-1]
	end

	numString
end

beer_bottles 9999  
