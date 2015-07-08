def english_number number
	if number < 0 
		return "Please enter a positive number."
	elsif number == 0
		return "Zero"
	end
	num_string = ""

	ones = ["One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"]
	teens = [ "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen"]
	tens = ["Ten", "Twenty", "Thirty", "Fourty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety"]
	big_num = [ ["hundred", 2], ["thousand", 3], ["million", 6], ["billion", 9], ["trillion", 12], ["quadrillion", 15], 
				["quintillion", 18], ["sextillion", 21], ["septillion", 24], ["octillion", 27], ["nonillion", 30], 
				["decillion", 33], ["undecillion", 36], ["duodecillion", 39], ["tredecillion", 42], ["quattuordecillion", 45], 
				["quindecillion", 48], ["sexdecillion", 51], ["septendecillion", 54], ["octodecillion", 57], ["novemdecillion", 60], ["vigintillion", 63], ["googol", 100] ]
		
	left = number

	until big_num.length == 0
		x = big_num.pop

		write = left / (10 ** x[1])
		left -= write * (10 ** x[1])

		if write > 0
			num = english_number write
			num_string << num + " " +x[0]

			if left == 0
				return num_string
	 		else
				num_string << " "
			end
		end
	end


	write = left / 10
	left -= write * 10

	if write > 0
		if (write == 1 and left > 0)
			num_string << teens[ left - 1 ]
			left = 0
		else
			num_tens = english_number write
			num_string << tens[ write - 1 ]
		end

		if left > 0
			num_string << "-"
		end
	end


	write = left		# Only ones to write out
	left -= write		# Should be 0 now 

	if write > 0
		num_string << ones[ write - 1 ]
	end

	return num_string
end

i = 50 		# Number of bottles

while i > 2
	puts (english_number i) + " bottles of beer on the wall. " + (english_number i) + " bottles of beer"
	puts "Take one down pass it around"
	i -= 1
	puts (english_number i) + " bottles of beer on the wall"
	puts " "
end
puts "Two bottles of beer on the wall. Two bottles of beer"
puts "Take one down pass it around"
puts "Only one bottle of beer on the wall"
puts " "
puts "Only one bottle of beer on the wall. Only one bottle of beer"
puts "Take it down pass it around"
puts "Ohh there all gone... Beer Run!!"