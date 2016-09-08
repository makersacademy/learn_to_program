def english_number number

  if number < 0
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


left = number

write = left/(10**48)
left = left - write*(10**48)

  if write > 0
    quindecillion = english_number write
    num_string = num_string + quindecillion + ' quindecillion'

  if left > 0
    num_string = num_string + ' '
  end
end


write = left/(10**45)
left = left - write*(10**45)

  if write > 0
    quattuordecillion = english_number write
    num_string = num_string + quattuordecillion + ' quattuordecillion'

  if left > 0
    num_string = num_string + ' '
  end
end

write = left/(10**42)
left = left - write*(10**42)

  if write > 0
    tredecillion = english_number write
    num_string = num_string + tredecillion + ' tredecillion'

  if left > 0
    num_string = num_string + ' '
  end
end


write = left/(10**39)
left = left - write*(10**39)

  if write > 0
    duodecillion = english_number write
    num_string = num_string + duodecillion + ' duodecillion'

  if left > 0
    num_string = num_string + ' '
  end
end



write = left/(10**36)
left = left - write*(10**36)

  if write > 0
    undecillion = english_number write
    num_string = num_string + undecillion + ' undecillion'

  if left > 0
    num_string = num_string + ' '
  end
end


write = left/(10**33)
left = left - write*(10**33)

  if write > 0
    decillion = english_number write
    num_string = num_string + decillion + ' decillion'

  if left > 0
    num_string = num_string + ' '
  end
end


write = left/(10**30)
left = left - write*(10**30)

  if write > 0
    nonillion = english_number write
    num_string = num_string + nonillion + ' nonillion'

  if left > 0
    num_string = num_string + ' '
  end
end


write = left/(10**27)
left = left - write*(10**27)

  if write > 0
    octillion = english_number write
    num_string = num_string + octillion + ' octillion'

  if left > 0
    num_string = num_string + ' '
  end
end




write = left/(10**24)
left = left - write*(10**24)

  if write > 0
    septillion = english_number write
    num_string = num_string + septillion + ' septillion'

  if left > 0
    num_string = num_string + ' '
  end
end



write = left/(10**21)
left = left - write*(10**21)

  if write > 0
    sextillion = english_number write
    num_string = num_string + sextillion + ' sextillion'

  if left > 0
    num_string = num_string + ' '
  end
end




write = left/(10**18)
left = left - write*(10**18)

  if write > 0
    quintillion = english_number write
    num_string = num_string + quintillion + ' quintillion'

  if left > 0
    num_string = num_string + ' '
  end
end



write = left/(10**15)
left = left - write*(10**15)

  if write > 0
    quadrillions = english_number write
    num_string = num_string + quadrillions + ' quadrillion'

  if left > 0
    num_string = num_string + ' '
  end
end

write = left/(10**12)
left = left - write*(10**12)

  if write > 0
    trillions = english_number write
    num_string = num_string + trillions + ' trillion'

  if left > 0
    num_string = num_string + ' '
  end
end


write = left/(10**9)
left = left - write*(10**9)

  if write > 0
    billions = english_number write
    num_string = num_string + billions + ' billion'

  if left > 0
    num_string = num_string + ' '
  end
end

write = left/(10**6)
left = left - write*(10**6)

  if write > 0
    millions = english_number write
    num_string = num_string + millions + ' million'

  if left > 0
    num_string = num_string + ' '
  end
end



write = left/1000
left = left - write*1000

  if write > 0
    thousands = english_number write
    num_string = num_string + thousands + ' thousand'

  if left > 0
    num_string = num_string + ' '
  end
end


write = left/100 # How many hundreds left?
left = left - write*100 # Subtract off those hundreds.

  if write > 0
# Now here's the recursion:
    hundreds = english_number write
    num_string = num_string + hundreds + ' hundred'

  if left > 0
# So we don't write 'two hundredfifty-one'...
    num_string = num_string + ' '
  end
end

write = left/10 # How many tens left?
left = left - write*10 # Subtract off those tens.

  if write > 0

    if ((write == 1) and (left > 0))
# Since we can't write "tenty-two" instead of "twelve", we have to make a special exception
# for these.
      num_string = num_string + teenagers[left-1]
# The "-1" is because teenagers[3] is 'fourteen', not 'thirteen'.
# Since we took care of the digit in the ones place already, we have nothing left to write.
      left = 0
    else
      num_string = num_string + tens_place[write-1]
# The "-1" is because tens_place[3] is 'forty', not 'thirty'.
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
# The "-1" is because ones_place[3] is 'four', not 'three'.
  end

# Now we just return "num_string"...

num_string

end

puts english_number( 0)
puts english_number( 9)
puts english_number( 10)
puts english_number( 11)
puts english_number(100)
puts english_number(101)
puts english_number(234)
puts english_number(10000)
puts english_number(1000000)
puts english_number(1000000000)
