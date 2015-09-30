def roman_to_integer roman
	digit_vals = {'i' => 1,
     			  'v' => 5,
	     		  'x' => 10,
                  'l' => 50,
                  'c' => 100,
                  'd' => 500,
                  'm' => 1000}
	total = 0
	prev = 0
	count = roman.length - 1
	puts roman.length
	while count >= 0
		numeral = roman[count].downcase
		puts roman[count]
		count = count - 1
		val = digit_vals[numeral]
		puts digit_vals[numeral]
    		if !val
				puts 'This is not a valid roman numeral!'
			    return
			end
			if val < prev
				val = val * -1
			else # val > prev
				prev = val
			end
		total = total + val
	end
	total
end
puts(roman_to_integer('cx'))