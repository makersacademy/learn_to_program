def roman_to_integer roman

	roman_numerals = ["M", "D", "C", "L", "X", "V", "I"]
	values = [1000, 500, 100, 50, 10, 5, 1]
	negvalues = [-1000, -500, -100, -50, -10, -5, -1]

	r_arr = roman.split("").map! {|letter| letter.upcase}
	answer = []

	r_arr.each.with_index do |letter, i|
		if roman_numerals.index(r_arr[i+1]) == nil 
		# for when you've got to the end

			answer << values[roman_numerals.index(letter)]

		elsif roman_numerals.index(letter) < roman_numerals.index(r_arr[i+1]) 
		# for when the next number along is smaller, so it's not subtracted

			answer << values[roman_numerals.index(letter)]

		elsif roman_numerals.index(letter) == roman_numerals.index(r_arr[i+1]) 
		# for when the next number along is the same so it's not subtracted

			answer << values[roman_numerals.index(letter)]

		else roman_numerals.index(letter) > roman_numerals.index(r_arr[i+1]) 
		#for when the next number along is bigger so the first is subtracted from total

			answer << (negvalues[roman_numerals.index(letter)]) 
		end
	end

	return answer.inject(:+)

end