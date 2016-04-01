def englishNumber number
  if number < 0 # no negative numbers
    return "Please enter a number that isn't negative."
  end
  if number == 0
    return "Zero"
  end
  

  numString = "" # This is the string it will return.
  
  onesPlace = ["One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"]
  tensPlace = ["Ten", "Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety"]
  teenagers = ["Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen"]
  
  # "Left" is how much of the number we still have left to write out.
  # "Write" is the part we are writing out right now.

  left = number
  write = left/1000 # how many thousands are left.
  left = left - write * 1000 # subtract off the thousands.
  
  if write > 0
    thousands = englishNumber write
	numString = numString + thousands + " Thousand"
	
    if left > 0
	  numString = numString + " "
    end
  end
  
  write = left/100	# how many hundreds left to write out.
  left = left - write * 100	# subtract off the hundreds.
  
  if write > 0
    # this should simplify the previous code.
	hundreds = englishNumber write
	numString = numString + hundreds + " Hundred"
    # this is called "recursion". This tells the method to call itself but with "write" instead of "number".
	# "Write" currently is the number of hundreds we have to write out. After we add "hundreds" to "numString"
	# we add the string " Hundred" after it.
	# E.g. if we originally called englishNumber with 1999 (number = 1999), then at the point, "write" would be
	# 19, and "left" would be 99. We then ask the englishNumber to write out "Nineteen" for us. Then we write out
	# " Hundred", and then the rest of englishNumber writes out "Ninety-Nine".
	
	if left > 0 # so we don't write "Two HundredFifty-One"
	  numString = numString + " and "
	end
  end
  
  write = left/10 # how many tens left to write out.
  left = left - write * 10 # subtract off the tens.
  
  if write > 0
    if ((write == 1) and (left > 0))
	# we need to make a special exception for the teens.
	numString = numString + teenagers[left - 1]
	# The "-1" is because teenagers[3] is "fourteen" not "thirteen" (Place orders)
	# we already took care of the digit in ones place so we have nothing more to write.
	  
	  left = 0
	else
	  numString = numString + tensPlace[write - 1]
	  # The "-1" is because tensPlace[3] is "Forty" not "Thirty".
	end
	
	if left > 0 # so we don't write "SixtyFour"
	  numString = numString + "-"
	end
  end
	 
  write = left # how many unites left to write out/
  left = 0 # substract off those.
  
  if write > 0
    numString = numString + onesPlace[write - 1]
	# The "-1" is because onesPlace[3] is "Four" not "Three".
	end

  # Now we just return "numString".
  numString
end

beer = 9999

while beer != 0
  puts "#{englishNumber(beer)} bottles of beer on the wall, #{englishNumber(beer)} bottles of beer!"
  puts "Take one down, pass it around."
  beer -= 1
  puts "#{englishNumber(beer)} bottles of beer on the wall."
  puts
end
