def r_to_i roman

  hash = {'m' => 1000,
  		  'd' => 500,
  		  'c' => 100,
  		  'l' => 50,
  		  'x' => 10,
  		  'v' => 5,
  		  'i' => 1}

  #start a count
  total = 0
  
  # set up a variable for some later code
  previous = 0

  #get the index number to refer to the last letter in the numerals that get passt in
  index = roman.length - 1

  #need to do this until the first letter of the numerals, i.e. position [0]
  while index >= 0

  	#create a variable for the last letter passed in. use the index number to refer to it.
    x = roman[index].downcase

    #let the index number go down one for the next loop
    index = index -1

    #use the variable representing the letter passed in, as a key name in the hash
    #start counting the output by referring to the number that the key name points to in the hash
    output = hash[x]
  
    # if hash doesn't include x, say 'not a numeral'
    # need to understand these lines - somehow they say that. how does !output work?
    if !output
    	puts "You need to make sure all of the letters are roman numerals."
    	return
    	#why do i have to have this return? program doesn't work without it.
    end
    

    # now stuff that takes care of the odd numerals where putting a lower one before
    # a higher one means you minus the lower one from the total
    if output < previous
    	output = output * -1
    else 
    	previous = output
    end

#  now add the output into the total to keep count of it.
    total = total + output
  end

  # this is here I assume to get it to be the last thing happening
  # in the code, so when you call the function it returns this value
  # without you having to actually say return that value.
  total
end

puts r_to_i('MCMXIII')