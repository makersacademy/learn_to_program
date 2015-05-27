def old_roman_numeral num
  
  if (num < 1)
  	return "Enter an integer greater than or equal to 1"
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




