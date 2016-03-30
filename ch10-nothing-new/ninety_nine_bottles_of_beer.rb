def english_number(num)

    if num < 0 
        return "Please return a number that isn't negative."
    end
    if num == 0 then return "zero" end
        
    num_string = ""
    
    ones = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    
    tens = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
    
    teens = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
  
    
    
    # left is how much of the number is still to write out
    # write is the part of the number we are writing out right now
    
    left = num 
    write = num/1000                    # sets write to no. thousands to write out
    
    left = left - write*1000            #subtracts no of thousands that are being written from no 'left' to write out 
    
    if write > 0
        num_string = num_string + english_number(write) + " thousand"
    end
    
    if left > 0
        num_string = num_string + " "
    end
    
    write = left/100
	left = left - write*100
	
	if write > 0
		num_string = num_string + ones[write-1] + ' hundred'
		
		if left > 0
			num_string = num_string + ' '
		end
	end
        
    write = left / 10           # sets write to no. of tens in number thats 'left'
    left = left - write*10           # sets left to number left to write out
    
    if write > 0
        
        if write == 1 && left > 0 
            num_string = num_string + teens[left-1]
            left = 0
        else 
            num_string = num_string + tens[write-1]
        end
        
        if left > 0
            num_string = num_string + "-"       #adds a dash for the final bit of the no. left to write
        end
    end
    
    write = left                        # only ones left to write out now
    
    left = 0                             #nothing left to write out after write is written 
    
    if write > 0                                    # zero already dealt with at the start of the method
        num_string = num_string + ones[write-1]
    end
    
    num_string.lstrip # numbers all written out now
    
end

 
    
    
    
def print_song(num)
    
        
    while num > 2 
        puts "#{english_number(num)} bottles of beer on the wall,"
        puts "#{english_number(num)} bottles of beer,"
        puts "Take one down, pass it around,"
        puts "#{english_number(num-1)} bottles of beer on the wall."
        num -= 1
    end
    if num == 2
        puts "#{english_number(num)} bottles of beer on the wall,"
        puts "#{english_number(num)} bottles of beer,"
        puts "Take one down, pass it around,"
        puts "#{english_number(num-1)} bottle of beer on the wall."
        num -= 1
    end
    if num == 1
        puts "#{english_number(num)} bottle of beer on the wall,"
        puts "#{english_number(num)} bottle of beer,"
        puts "Take one down, pass it around,"
        puts "#{english_number(num-1)} bottles of beer on the wall."
        num -= 1
    end
end
    
# print_song(9999)