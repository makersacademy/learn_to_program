# Create new hash
roman_numeral = { }
status = 'invalid'
# Defining the roman numeral hash
roman_numeral['I'] = 1
roman_numeral['V'] = 5
roman_numeral['X'] = 10
roman_numeral['L'] = 50
roman_numeral['C'] = 100
roman_numeral['D'] = 500
roman_numeral['M'] = 1000

while status != 'valid'
	# Request a Roman numeral, capitalize input and put in array
	puts 'Please type in a Roman Numeral'
	input_numeral = gets.chomp.upcase
	no_of_chars = input_numeral.length
	input_array = [ ]
	counter1 = 0
	while counter1 < no_of_chars # pushing out the numbers and counting them.
		input_array.push input_numeral[counter1]
		counter1 = counter1 + 1
	end
	# Check each character in the array to see if its a Roman Numeral
	counter2 = 0
	input_array.each do |input_letter|
		roman_numeral.each do |rom_letter,number| 
			if input_letter.chr == rom_letter
				counter2 = counter2 + 1
			else
			end
		end
	end 

	if counter2 == input_array.length
		status = 'valid'
	else
		status = 'invalid'
		puts 'Error: Not all characters are valid roman numerals'
	end
end

# Convert roman numeral letter array to array of numbers
number_array = [ ]
input_array.each do |letter|
	letter = letter.chr
	number = roman_numeral[letter]
	number_array.push number
end

# Add/Subtract number array one at a time starting from right
counter3 = number_array.length - 1
# Starting value, first number
number = number_array[counter3]
counter3 = counter3 - 1

while counter3 > -1  # Sum from left to right
	if number_array[counter3] < number_array[counter3+1]
		number = number - number_array[counter3]
	else
		number = number + number_array[counter3]
	end
	counter3 = counter3 - 1
end

puts number 