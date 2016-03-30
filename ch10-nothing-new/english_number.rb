def english_number(n)
	if n < 0 # no negative numbers
		return "Please enter a number that isn't negative"
	end

	if n == 0
		return "zero"
	end

	word = ""

	ones = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
	tens = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
	teens = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
	
	# the integers stand for how many "0" there are in each big number
	big_numbers = [
		["gogol", 64],
		["virgintillion", 63],
		["novemdecillion", 60],
		["octodecillion", 57],
		["septendecillion", 54],
		["sexdecillion", 51],
		["quindecillion", 48],
		["quattuordecillion", 45],
		["tredecillion", 42],
		["duodecillion", 39],
		["undecillion", 36],
		["decillion", 33],
		["nonillion", 30],
		["octillion", 27],
		["septillion", 24],
		["sextillion", 21],
		["quintillion", 18],
		["quadrillion", 15],
		["trillion", 12],
		["billion", 9],
		["million", 6]
	
	]

	# we set remainder to how much is left of the number, right now we have all the number left
	# write is the part we are writing out
	remainder = n

	# CHECK FOR ZILLIONS
	big_numbers.each do |x| # iterate through each sub-array
		write = remainder/("1" + ("0" * x[1])).to_i # multiplies the "0" by the sub-array second element in big_numbers to get the correct -illion, divides remainder to see how many exist
		remainder -= write * ("1" + ("0" * x[1])).to_i # subtracts from the remainder to get a new remainder

		if write > 0 
			zillions = english_number(write) # recursion: for zillions (e.g. four trillion)
			word << zillions + " " + x[0] # adds the value of zillions from the recursion (e.g. four) + the sub-array first element it corresponds to (e.g. trillion)

			if remainder > 0
				word << " "
			end
		end
	end

	# CHECK FOR THOUSANDS
	write = remainder/1000
	remainder -= (write * 1000)

	if write > 0
		thousands = english_number(write) # recursion: for thousands (e.g. two thousand)
		word << thousands + " thousand" # adds the value of thousands from the recursion (e.g. two)

		if remainder > 0
			word << " " # so that we don't write "two thousandfiftyone"
		end
	end
	
	# CHECK FOR HUNDREDS
	write = remainder/100 # check if there are any hundreds and how many
	remainder -= (write * 100) # subtract off the hundreds to get the new value of remainder
	
	if write > 0 # if write includes 100 or more (if write/100 > 0)
		hundreds = english_number(write) # recursion: for hundreds (e.g. three hundred)
		word << hundreds + " hundred" # adds the value of hundreds from the recursion (e.g. three)
		
		if remainder > 0 
			word << " " # so that we don't write "two hundredfiftyone"
		end
	end

	# CHECK FOR TENS
	write = remainder/10 # check if there are any 10s and how many
	remainder -= write * 10 # subtract off the tens to get the new value of remainder
	
	if write > 0
		if (write == 1) && (remainder > 0) # making sure the number starts with 1 i.e a teen and isn't 10
			word << teens[remainder - 1] # -1 because teenagers[3] is "fourteen" not "thirteen" (index starts at 0) and we use remainder rather than write as remainder will determine for teens which one it is
			remainder = 0 # since we took care of the digit in the ones place already (as it was a teen), we have nothing left to write
		else # otherwise, if it is bigger than 10 but doesn't start with 1 i.e. is a tens
			word << tens[write - 1] 
		end

		if remainder > 0 # if there is another digit to convert, we need to make a space so it doesn't write "sixtyfour"
			word << "-"
		end
	end

	# CHECK FOR ONES
	write = remainder # how many ones left to write, reassign value of write to this
	remainder = 0 # subtract off the ones
	
	if write > 0
		word << ones[write - 1]
	end

	word

end


