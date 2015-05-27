def old_roman_numeral num
  
  if (num < 1 or num > 3000)
  	return "Enter a number between 1 and 3000"
  end

  numString = ""
  divider = [1000,500,100,50,10,5,1]
  numerals = ["M","D","C","L","X","V","I"]

  left = num
  counter = 0

  while left > 0

  	write = left / divider[counter]
  	left = num % divider[counter]

  	if write > 0
  	numString = numString + numerals[counter] * write
 	end

    counter = counter + 1
  end

return numString

end

puts old_roman_numeral(2234)


