def english_number number
	if number < 0
		return "Please enter a number that isn't negative."
	end

	if number == 0
		return "zero"
	end

	numString = ""

	onesPlace = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
	tensPlace = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
	teenagers = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]

  zillions = [['hundred', 2],
              ['thousand', 3],
              ['million', 6],
              ['billion', 9],
              ['trillion', 12],
              ['quadrillion', 15],
              ['quintillion', 18],
              ['sextillion', 21],
              ['septillion', 24],
              ['octillion', 27],
              ['nonillion', 30],
              ['decillion', 33],
              ['undecillion', 36],
              ['duodecillion', 39],
              ['tredecillion', 42],
              ['quattuordecillion', 45],
              ['quindecillion', 48],
              ['sexdecillion', 51],
              ['septendecillion', 54],
              ['octodecillion', 57],
              ['novemdecillion', 60],
              ['vigintillion', 63],
              ['googol', 100]]

	left = number
  while zillions.size > 0
    zil = zillions.pop
    zil_name = zil[0]
    zil_base = 10 ** zil[1]
    write = left/zil_base
    left = left - write*zil_base

    if write > 0
      prefix = english_number write
      numString += prefix + " " + zil_name

      if left > 0
        numString += " "
      end
    end
  end

	write = left/10
	left = left - write*10

	if write > 0
		if ( (write == 1) and (left > 0) )
		# consider the "teenager" numbers first
			numString += teenagers[left-1]
			# as index numbers start at zero and values start at "eleven"
			left = 0
			# make left 0 as we have taken care of the last digit already
		else
			numString += tensPlace[write-1]
		end

		if left > 0
			numString = numString + "-"
			# to write "sixty-four"
		end
	end

	write = left
	left = 0

	if write > 0
		numString += onesPlace[write-1]
	end

	numString
end
