def roman_numeral num
  # your code here
  numerals = Hash.new
  numerals["1"] = "I"
  numerals["5"] = "V"
  numerals["10"] = "X"
  numerals["50"] = "L"
  numerals["100"] = "C"
  numerals["500"] = "D"
  numerals["1000"] = "M"

  numeral = ""

  if num < 1 || num > 3000
  	puts "Please choose a number between 1 and 3000"  	
  end

  left = num

  while left > 0 

  	write = left/1000

  	left = left - write*1000

  	if write > 0

  		numeral = numerals["1000"] * write

  	end

  	write = left/100

  	left = left - write*100

  	if write > 0

  		if write == 9

  			numeral = numeral + numerals["100"] + numerals["1000"]

      elsif write < 9 && write > 5

        write = write - 5

        numeral = numeral + numerals["500"] + numerals["100"] * write

      elsif write == 5

        numeral = numeral + numerals["500"]

  		elsif write == 4

  			numeral = numeral + numerals["100"] + numerals["500"]

  		elsif write < 4

  			numeral = numeral + numerals["100"] * write
     
  		end

  	end

  	write = left/10

  	left = left - write*10

  	if write > 0

      if write == 9

        numeral = numeral + numerals["10"] + numerals["100"]

      elsif write < 9 && write > 5

        write = write - 5

        numeral = numeral + numerals["50"] + numerals["10"] * write

      elsif write == 5

        numeral = numeral + numerals["50"]

      elsif write == 4

        numeral = numeral + numerals["10"] + numerals["50"]

      elsif write < 4

 			  numeral = numeral + numerals["10"] * write

      end

  	end

  	write = left

		left = left - write

		if write > 0

		 	if write == 9

        numeral = numeral + numerals["1"] + numerals["10"]

      elsif write < 9 && write > 5

        write = write - 5

        numeral = numeral + numerals["5"] + numerals["1"] * write

      elsif write == 5

        numeral = numeral + numerals["5"]

      elsif write == 4

				numeral = numeral + numerals["1"] + numerals["5"]
  		
			elsif write < 4

  			numeral = numeral + numerals["1"] * write
    
 			end

		end

  end

  return numeral

end

# puts old_roman_numeral(-2)
# puts roman_numeral(4)
# puts roman_numeral(7)
# puts roman_numeral(9)
# puts roman_numeral(14)
# puts roman_numeral(15)
# puts roman_numeral(18)
# puts roman_numeral(19)
# puts roman_numeral(33)
# puts roman_numeral(34)
# puts roman_numeral(38)
# puts roman_numeral(59)
# puts roman_numeral(228)
# puts roman_numeral(234)
# puts roman_numeral(2900)
# puts old_roman_numeral(16)
# puts old_roman_numeral(74)
# puts old_roman_numeral(243)
# puts old_roman_numeral(2000)
# puts old_roman_numeral(3020)
