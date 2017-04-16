def roman_numeral num

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
      if (write == 4) & (divider[counter] != 1000)
        if (numString[-1] == "V") or (numString[-1] == "L") or (numString[-1] == "D")
          numString = numString.chop + numerals[counter] + numerals[counter-2]
        else
          numString = numString + numerals[counter] + numerals[counter-1]
        end
      else
        numString = numString + numerals[counter] * write
      end
    end

    counter = counter + 1

  end

  return numString

end

