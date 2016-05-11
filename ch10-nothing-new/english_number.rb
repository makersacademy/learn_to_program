def english_number number
	if number == 0
		return "zero"
	end

	numString = ""

	onesPlace = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
	tensPlace = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
	teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

	left = number
  # Left is how much of the number we have left to write

  # GOOGOLS - this part works out the number of googols
  write = left / 10**66
  # Write is the part of the number we are writing at each step in the program.
  # For googols we are saying "how many googols go into left?" If the answer is
  # zero then there are no googols to write, so we skip to vigintillions and
  # so on until we hit a unit that IS included in the current value of left.
	left = left - write * 10**66
  # Updates left by deducting the unit already counted.  So if left included
  # one googol, then one googol gets subtracted from left, thereby updating its
  # value by removing the googols so we can proceed to count the next smallest
  # unit in the number.
	if write > 0
		googol = english_number(write)
  # This is the RECUSION! If the number had two googol units (i.e. write at that
  # point would be equal to 2), then we need to re-run the program on 2 to
  # return the word "two" so we ultimately end up with "two googol".
		numString = numString + googol + ' googol'
		if left > 0
			numString = numString + ' '
		end
	end

	write = left / 10**63
	left = left - write * 10**63

	if write > 0
		vigintillion = english_number(write)
		numString = numString + vigintillion + ' vigintillion'
		if left > 0
			numString = numString + ' '
		end
	end

	write = left / 10**60
	left = left - write * 10**60

	if write > 0
		novemdecillion = english_number(write)
		numString = numString + novemdecillion + ' novemdecillion'
		if left > 0
			numString = numString + ' '
		end
	end

	write = left / 10**57
	left = left - write * 10**57

	if write > 0
		octodecillion = english_number(write)
		numString = numString + octodecillion + ' octodecillion'
		if left > 0
			numString = numString + ' '
		end
	end

  write = left / 10**54
	left = left - write * 10**54

	if write > 0
		septendecillion = english_number(write)
		numString = numString + septendecillion + ' septendecillion'
		if left > 0
			numString = numString + ' '
		end
	end

	write = left / 10**51
	left = left - write * 10**51

	if write > 0
		sexdecillion = english_number(write)
		numString = numString + sexdecillion + ' sexdecillion'
		if left > 0
			numString = numString + ' '
		end
	end

	write = left / 10**48
	left = left - write * 10**48

	if write > 0
		quindecillion = english_number(write)
		numString = numString + quindecillion + ' quindecillion'
		if left > 0
			numString = numString + ' '
		end
	end

	write = left / 10**45
	left = left - write * 10**45

	if write > 0
		quattuordecillion = english_number(write)
		numString = numString + quattuordecillion + ' quattuordecillion'
		if left > 0
			numString = numString + ' '
		end
	end

	write = left / 10**42
	left = left - write * 10**42

	if write > 0
		tredecillion = english_number(write)
		numString = numString + tredecillion + ' tredecillion'
		if left > 0
			numString = numString + ' '
		end
	end

  write = left / 10**39
	left = left - write * 10**39

	if write > 0
		duodecillion = english_number(write)
		numString = numString + duodecillion + ' duodecillion'
		if left > 0
			numString = numString + ' '
		end
	end

	write = left / 10**36
	left = left - write * 10**36

	if write > 0
		undecillion = english_number(write)
		numString = numString + undecillion + ' undecillion'
		if left > 0
			numString = numString + ' '
		end
	end

		write = left / 10**33
	left = left - write * 10**33

	if write > 0
		decillion = english_number(write)
		numString = numString + decillion + ' decillion'
		if left > 0
			numString = numString + ' '
		end
	end

	write = left / 10**30
	left = left - write * 10**30

	if write > 0
		nonillion = english_number(write)
		numString = numString + nonillion + ' nonillion'
		if left > 0
			numString = numString + ' '
		end
	end

	write = left / 10**27
	left = left - write * 10**27

	if write > 0
		octillion = english_number(write)
		numString = numString + octillion + ' octillion'
		if left > 0
			numString = numString + ' '
		end
	end

	write = left / 10**24
	left = left - write * 10**24

	if write > 0
		septillion = english_number(write)
		numString = numString + septillion + ' septillion'
		if left > 0
			numString = numString + ' '
		end
	end

	write = left / 10**21
	left = left - write * 10**21

	if write > 0
		sextillion = english_number(write)
		numString = numString + sextillion + ' sextillion'
		if left > 0
			numString = numString + ' '
		end
	end

	write = left / 10**18
	left = left - write * 10**18

	if write > 0
		quintillion = english_number(write)
		numString = numString + quintillion + ' quintillion'
		if left > 0
			numString = numString + ' '
		end
	end

	write = left / 10**15
	left = left - write * 10**15

	if write > 0
		quadrillion = english_number(write)
		numString = numString + quadrillion + ' quadrillion'
		if left > 0
			numString = numString + ' '
		end
	end

	write = left / 10**12
	left = left - write * 10**12

	if write > 0
		trillions = english_number(write)
		numString = numString + trillions + ' trillion'
		if left > 0
			numString = numString + ' '
		end
	end

	write = left / 10**9
	left = left - write * 10**9

	if write > 0
		billions = english_number(write)
		numString = numString + billions + ' billion'
		if left > 0
			numString = numString + ' '
		end
	end

	write = left / 10**6
	left = left - write * 10**6

	if write > 0
		millions = english_number(write)
		numString = numString + millions + ' million'
		if left > 0
			numString = numString + ' '
		end
	end

	write = left / 1000 #
	left = left - write * 1000 #

	if write > 0
		thousands = english_number(write)
		numString = numString + thousands + ' thousand'
		if left > 0
			numString = numString + ' '
		end
	end

	write = left / 100 #
	left = left - write * 100 #

	if write > 0
		hundreds = english_number(write)
		numString = numString + hundreds + ' hundred'
		if left > 0
			numString = numString + ' '
		end
	end

	write = left / 10
	left = left - write * 10

	if write > 0
		if ((write == 1) and (left > 0))
			numString = numString + teenagers[left-1]
			left = 0
		else
			numString = numString + tensPlace[write-1]
		end

		if left > 0
			numString = numString + '-'
		end
	end

	write = left
	left = 0

	if write > 0
		numString = numString + onesPlace[write-1]
	end
	numString
end                     # => :english_number

#puts english_number( 0)  # => nil
#puts english_number( 9)  # => nil
#puts english_number( 10)  # => nil
#puts english_number( 11)  # => nil
#puts english_number( 17)  # => nil
#puts english_number( 32)  # => nil
#puts english_number( 88)
#puts english_number( 99)
#puts english_number(100)  # => nil
#puts english_number(101)
#puts english_number(234)
#puts english_number(3211)
#puts english_number(999999)
#puts english_number(1000000000000)
#puts english_number
