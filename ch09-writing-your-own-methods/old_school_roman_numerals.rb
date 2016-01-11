def old_roman_numeral num
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

  	write = left/500

  	left = left - write*500

  	if write > 0

  		numeral = numeral + numerals["500"] * write

  	end

  	write = left/100

  	left = left - write*100

  	if write > 0

  		numeral = numeral + numerals["100"] * write

  	end

  	write = left/50

  	left = left - write*50

  	if write > 0

  		numeral = numeral + numerals["50"] * write

  	end

  	write = left/10

  	left = left - write*10

  	if write > 0

  		numeral = numeral + numerals["10"] * write

  	end

  	write = left/5

  	left = left - write*5

  	if write > 0

  		numeral = numeral + numerals["5"] * write

  	end

  	write = left

  	left = left - write

  	if write > 0

  		numeral = numeral + numerals["1"] * write

  	end

  end

  return numeral

end

# puts old_roman_numeral(-2)
# puts old_roman_numeral(16)
# puts old_roman_numeral(74)
# puts old_roman_numeral(243)
# puts old_roman_numeral(2000)
# puts old_roman_numeral(3020)