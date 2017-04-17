def english_number number 

	if number < 0
		return 'Please choose a number greater than zero.'
	end 

	if number > 100 
		return 'Please choose a number 100 or less'
	end

	numString = ''

	
	left = number

	
	write = left/100
	left = left - write * 100

	if write > 0
		return 'one hundred'
	end

	write = left/10
	left = left - write * 10

	if write > 0
		if write == 1
			if left == 0 
				numString = numString + 'ten'
			elsif left == 1
				numString = numString + 'eleven'
			elsif left == 2
				numString = numString + 'twelve'
			elsif left == 3
				numString = numString + 'thirteen'
			elsif left == 4
				numstring = numString + 'fourteen'
			elsif left == 5
				numString = numString + 'fifteen'
			elsif left == 6
				numString = numString + 'sixteen'
			elsif left == 7
				numString = numString + 'seventeen'
			elsif left == 8
				numString = numString + 'eighteen'
			elsif left == 9
				numString = numString + 'nineteen'
			end

			left = 0

		elsif write == 2
			numString = numString + 'twenty'
		elsif write == 3
			numString = numString + 'thirty'
		elsif write == 4
			numString = numString + 'forty'
		elsif write == 5
			numString = numString + 'fifty'
		elsif write == 6
			numString = numString + 'sixty'
		elsif write == 7
			numString = numString + 'seventy'
		elsif write == 8
			numString = numString + 'eighty'
		elsif write == 9
			numString = numString + 'ninety'
		end

			if left > 0
				numString = numString + '-'
			end
		end

	write = left
	left = 0

	if write == 1
		numString = numString + 'one'
	elsif write == 2
		numString = numString + 'two'
	elsif write == 3
		numString = numString + 'three'
	elsif write == 4
		numString = numString + 'four'
	elsif write == 5
		numString = numString + 'five'
	elsif write == 6
		numstring = numString + 'six'
	elsif write == 7
		numString = numString + 'seven'
	elsif write == 8 
		numString = numString + 'eight'
	elsif write == 9
		numString = numString + 'nine'
	end


numString
end

puts english_number(100)
puts english_number(11)
puts english_number(17)
puts english_number(19)
puts english_number(10)
puts english_number(9)
puts english_number(7)
puts english_number(3)
puts english_number(1)
puts english_number(43)
puts english_number(22)
puts english_number(72)