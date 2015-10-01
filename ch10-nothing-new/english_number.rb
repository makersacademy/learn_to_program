def english_number number
   
    if number < 0
      return "Please enter a number that isn't negative."
    end
   
    if number == 0
      return 'zero'
    end

numString = ''
onesPlace = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
tensPlace = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

leftToWrite = number

writing = leftToWrite/1000000000000000000000000000000000000000000000000
leftToWrite = leftToWrite - writing*1000000000000000000000000000000000000000000000000

  if writing > 0
  quindecillions = english_number writing
  numString = numString + quindecillions + ' quindecillion'
  if leftToWrite > 0
  numString = numString + ' '
  end
end

writing = leftToWrite/1000000000000000000000000000000000000000000000
leftToWrite = leftToWrite - writing*1000000000000000000000000000000000000000000000

  if writing > 0
  quattuordecillions = english_number writing
  numString = numString + quattuordecillions + ' quattuordecillion'
  if leftToWrite > 0
  numString = numString + ' '
  end
end

writing = leftToWrite/1000000000000000000000000000000000000000000
leftToWrite = leftToWrite - writing*1000000000000000000000000000000000000000000

  if writing > 0
  tredecillions = english_number writing
  numString = numString + tredecillions + ' tredecillion'
  if leftToWrite > 0
  numString = numString + ' '
  end
end

writing = leftToWrite/1000000000000000000000000000000000000000
leftToWrite = leftToWrite - writing*1000000000000000000000000000000000000000

  if writing > 0
  duodecillions = english_number writing
  numString = numString + duodecillions + ' duodecillion'
  if leftToWrite > 0
  numString = numString + ' '
  end
end

writing = leftToWrite/1000000000000000000000000000000000000
leftToWrite = leftToWrite - writing*1000000000000000000000000000000000000

  if writing > 0
  undecillions = english_number writing
  numString = numString + undecillions + ' undecillion'
  if leftToWrite > 0
  numString = numString + ' '
  end
end

writing = leftToWrite/1000000000000000000000000000000000
leftToWrite = leftToWrite - writing*1000000000000000000000000000000000

  if writing > 0
  decillions = english_number writing
  numString = numString + decillions + ' decillion'
  if leftToWrite > 0
  numString = numString + ' '
  end
end

writing = leftToWrite/1000000000000000000000000000000
leftToWrite = leftToWrite - writing*1000000000000000000000000000000

  if writing > 0
  nonillions = english_number writing
  numString = numString + nonillions + ' nonillion'
  if leftToWrite > 0
  numString = numString + ' '
  end
end

writing = leftToWrite/1000000000000000000000000000
leftToWrite = leftToWrite - writing*1000000000000000000000000000

  if writing > 0
  octillions = english_number writing
  numString = numString + octillions + ' octillion'
  if leftToWrite > 0
  numString = numString + ' '
  end
end

writing = leftToWrite/1000000000000000000000000
leftToWrite = leftToWrite - writing*1000000000000000000000000

  if writing > 0
  septillions = english_number writing
  numString = numString + septillions + ' septillion'
  if leftToWrite > 0
  numString = numString + ' '
  end
end

writing = leftToWrite/1000000000000000000000
leftToWrite = leftToWrite - writing*1000000000000000000000

  if writing > 0
  sextillions = english_number writing
  numString = numString + sextillions + ' sextillion'
  if leftToWrite > 0
  numString = numString + ' '
  end
end

writing = leftToWrite/1000000000000000000
leftToWrite = leftToWrite - writing*1000000000000000000

  if writing > 0
  quintillions = english_number writing
  numString = numString + quintillions + ' quintillion'
  if leftToWrite > 0
  numString = numString + ' '
  end
end

writing = leftToWrite/1000000000000000
leftToWrite = leftToWrite - writing*1000000000000000

  if writing > 0
  quadrillions = english_number writing
  numString = numString + quadrillions + ' quadrillion'
  if leftToWrite > 0
  numString = numString + ' '
  end
end

writing = leftToWrite/1000000000000
leftToWrite = leftToWrite - writing*1000000000000

  if writing > 0
  trillions = english_number writing
  numString = numString + trillions + ' trillion'
  if leftToWrite > 0
  numString = numString + ' '
  end
end

writing = leftToWrite/1000000000
leftToWrite = leftToWrite - writing*1000000000

  if writing > 0
  billions = english_number writing
  numString = numString + billions + ' billion'
  if leftToWrite > 0
  numString = numString + ' '
  end
end

writing = leftToWrite/1000000
leftToWrite = leftToWrite - writing*1000000

  if writing > 0
  millions = english_number writing
  numString = numString + millions + ' million'
  if leftToWrite > 0
  numString = numString + ' '
  end
end

writing = leftToWrite/1000
leftToWrite = leftToWrite - writing*1000

  if writing > 0
  thousands = english_number writing
  numString = numString + thousands + ' thousand'
  if leftToWrite > 0
  numString = numString + ' '
  end
end

writing = leftToWrite/100
leftToWrite = leftToWrite - writing*100

  if writing > 0
  hundreds = english_number writing
  numString = numString + hundreds + ' hundred'
  if leftToWrite > 0
  numString = numString + ' '
  end
end

writing = leftToWrite/10
leftToWrite = leftToWrite - writing*10

if writing > 0
  if ((writing == 1) and (leftToWrite > 0))
    numString = numString + teenagers[leftToWrite-1]
    leftToWrite = 0
  else
    numString = numString + tensPlace[writing-1]
  end

  if leftToWrite > 0
    numString = numString + '-'
  end
end

writing = leftToWrite
leftToWrite = 0

if writing > 0
  numString = numString + onesPlace[writing-1]
end

numString

end

puts english_number(109238745102938560129834709285360238475982374561034)
