def english_number number

  if number < 0 # No negative numbers.
	return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end

  # No more special cases! No more returns!

  num_string = '' # This is the string we will return.
  ones_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  tens_place = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
  
  categories = 
  [['hundred',100],
  ['thousand',10**3],
  ['million',10**6],
  ['billion',10**9],
  ['trillion',10**12],
  ['quadrillion',10**15],
  ['quintillion',10**18],
  ['sextillion',10**21],
  ['septillion',10**24],
  ['octillion',10**27],
  ['nonillion',10**30],
  ['decillion',10**33],
  ['undecillion',10**36],
  ['duodecillion',10**39],
  ['tredecillion',10**42],
  ['quattuordecillion',10**45],
  ['quindecillion',10**48]]

  # "left" is how much of the number
  # we still have left to write out.
  # "write" is the part we are
  # writing out right now.
  # write and left...get it? :)

  left = number
  
  for i in (0...categories.length)
  	write = left/categories.last[1]
  	left = left - write*categories.last[1] 
    if write > 0
      # Now here's the recursion:
      category = english_number write
      num_string = num_string + category + ' ' + categories.last[0]
      if left > 0
        # So we don't write 'two hundredfifty-one'...
        num_string = num_string + ' '
      end
    end
    categories.delete(categories.last)
  end

  write = left/10 # How many tens left?
  left = left - write*10 # Subtract off those tens.

  if write > 0
    if ((write == 1) and (left > 0))
      # Since we can't write "tenty-two" instead of
      # "twelve", we have to make a special exception
      # for these.
      num_string = num_string + teenagers[left-1]
      # The "-1" is because teenagers[3] is
      # 'fourteen', not 'thirteen'.
	  # Since we took care of the digit in the
	  # ones place already, we have nothing left to write.
	  left = 0
    else
      num_string = num_string + tens_place[write-1]
	  # The "-1" is because tens_place[3] is
	  # 'forty', not 'thirty'.
    end

    if left > 0
	  # So we don't write 'sixtyfour'...
	  num_string = num_string + '-'
    end
  end

  write = left # How many ones left to write out?
  left = 0 # Subtract off those ones.

  if write > 0
    num_string = num_string + ones_place[write-1]
	# The "-1" is because ones_place[3] is
	# 'four', not 'three'.
  end

  # Now we just return "num_string"...
  num_string
end


puts english_number(1500)
puts english_number(101)
puts english_number(234)
puts english_number(3211)
puts english_number(999999)
puts english_number(1000000000000)