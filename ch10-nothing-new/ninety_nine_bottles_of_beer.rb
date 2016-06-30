def ninety_nine num

while num > 0
	puts english_number(num).capitalize + " bottles of beer on the wall, " + english_number(num) + " bottles of beer!"
	num -= 1
	
	if num > 1
	puts "Take one down, pass it around, " + english_number(num) + " bottles of beer on the wall!"
	else
	puts "Take one down, pass it around, and no more bottles of beer on the wall!" 
	end
end

end


def english_number number
        
        if number < 0
        puts "please enter a positive integer"
        end
        if number == 0
        return "zero"
        end

numString = ""

onesPlace = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
tensPlace = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
teenagers = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
large_numbers = ["thousand", "million", "billion", "trillion", "quadrillion", "quintillion", "sextillion", "septillion", "octillion", "nonillion", "decillion", "undecillion", "duodecillion", "tredecillion", "quattuordecillion", "quindecillion"]

# assesses whether the number passed is larger than a million and therefore where to start in the array of large numbers 
if number.to_s.length <= 7 
	idx = 1
else idx = large_numbers.length-1
end

#checks for large numbers
left = number
while idx >= 0
large_number_to_test = ("1" + ("0" * ((idx + 1) * 3))).to_i
write = left/large_number_to_test
left = left - write * large_number_to_test

if write > 0
	amount_of_large_number = english_number write
	numString = numString + amount_of_large_number + " " + large_numbers[idx]
		
		if left > 0
			numString = numString + " "
		end
end

idx -= 1
end

#deals with hundreds
write = left/100                                         
left = left - write * 100                                

if write > 0
hundreds = english_number write                                 
numString = numString + hundreds + " hundred"

        if left > 0
        numString = numString + " "                     
        end
end


#deals with tens and teenagers
write = left/10
left = left - write * 10

if write > 0 
if ((write == 1) and (left > 0))
numString = numString + teenagers[left-1]
left = 0
else numString = numString + tensPlace[write-1]
end

        if left > 0
        numString = numString + "-"
        end
end


#deals with ones
write = left
left = 0
if write > 0
numString = numString + onesPlace[write-1]
end

return numString

end


