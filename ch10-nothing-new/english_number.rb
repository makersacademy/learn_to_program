def english_number number
  if number < 0 # no negative numbers
    return "Please enter a number that isn't negative."
  end
  if number == 0
    return "zero"
  end
  
  # no more special cases and no more returns.
  
  numString = "" # This is the string it will return.
  
  onesPlace = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
  tensPlace = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
  teenagers = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
  zillions  = [["hundred", 2],
               ["thousand", 3],
               ["million", 6],
               ["billion", 9],
               ["trillion", 12],
               ["quadrillion", 15],
               ["quintillion", 18],
               ["sextillion", 21],
               ["septillion", 24],
               ["octillion", 27],
               ["nonillion", 30],
               ["decillion", 33],
               ["undecillion", 36],
               ["duodecillion", 39],
               ["tredecillion", 42],
               ["quattuordecillion", 45],
               ["quindecillion", 48],
               ["sexdecillion", 51],
               ["septendecillion", 54],
               ["octodecillion", 57],
               ["novemdecillion", 60],
               ["vigintillion", 63],
               ["googol", 100]]
  
  # "Left" is how much of the number we still have left to write out.
  # "Write" is the part we are writing out right now.

    left = number

  while zillions.length > 0
    zil_pair = zillions.pop
    zil_name = zil_pair[0]
    zil_base = 10 ** zil_pair[1]
    write = left/zil_base # How many zillions left?
    left = left - write*zil_base # Subtract off those zillions.

    if write > 0
      # Now here's the recursion:
      prefix = english_number write
      numString = numString + prefix + ' ' + zil_name

      if left > 0
        # So we don't write 'two billionfifty-one'...
        numString = numString + ' '
      end
    end
  end
  #write = left/100	# how many hundreds left to write out.
  #left = left - write * 100	# subtract off the hundreds.
  
  #if write > 0
    # this should simplify the previous code.
	#hundreds = english_number write
	#numString = numString + hundreds + " hundred"
    # this is called "recursion". This tells the method to call itself but with "write" instead of "number".
	# "Write" currently is the number of hundreds we have to write out. After we add "hundreds" to "numString"
	# we add the string " Hundred" after it.
	# E.g. if we originally called english_number with 1999 (number = 1999), then at the point, "write" would be
	# 19, and "left" would be 99. We then ask the english_number to write out "Nineteen" for us. Then we write out
	# " Hundred", and then the rest of english_number writes out "Ninety-Nine".
	
	#if left > 0 # so we don't write "Two HundredFifty-One"
	 # numString = numString + " "
	#end
  #end
  
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

 puts english_number( 0)
 puts english_number( 9)
 puts english_number( 10)
 puts english_number( 11)
 puts english_number( 17)
 puts english_number( 32)
 puts english_number( 88)
 puts english_number( 99)
 puts english_number(100)
 puts english_number(101)
 puts english_number(234)
 puts english_number(3211)
 puts english_number(999999)
 puts english_number(1000000000000)
 puts english_number(109238745102938560129834709285360238475982374561034)