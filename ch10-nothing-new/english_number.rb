def english_number number
=begin
  if number < 0
    return 'Please enter a number that isn\'t negative.'
  end
=end

  if number == 0
    return 'zero'
  end

  numString = ''

  onesPlace = ['one', 'two','three', 'four','five','six','seven','eight','nine']
  tensPlace = ['ten','twenty','thirty','forty','fifty','sixty','seventy','eighty','ninety']
  teenagers = ['eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen']

  left = number

  write = left/1000000000000000000000000000000000000000000000000
  left = left - write*1000000000000000000000000000000000000000000000000

  if write > 0
        thousands  = english_number write
    numString = numString + thousands + ' quindecillion'

    if left > 0

      numString = numString + ' '
    end
  end

  write = left/1000000000000000000000000000000000000000000000
  left = left - write*1000000000000000000000000000000000000000000000

  if write > 0
        thousands  = english_number write
    numString = numString + thousands + ' quattuordecillion'

    if left > 0

      numString = numString + ' '
    end
  end


  write = left/1000000000000000000000000000000000000000000
  left = left - write*1000000000000000000000000000000000000000000

  if write > 0
        thousands  = english_number write
    numString = numString + thousands + ' tredecillion'

    if left > 0

      numString = numString + ' '
    end
  end

  write = left/1000000000000000000000000000000000000000
  left = left - write*1000000000000000000000000000000000000000

  if write > 0
        thousands  = english_number write
    numString = numString + thousands + ' duodecillion'

    if left > 0

      numString = numString + ' '
    end
  end

  write = left/1000000000000000000000000000000000000
  left = left - write*1000000000000000000000000000000000000

  if write > 0
        thousands  = english_number write
    numString = numString + thousands + ' undecillion'

    if left > 0

      numString = numString + ' '
    end
  end

  write = left/1000000000000000000000000000000000
  left = left - write*1000000000000000000000000000000000

  if write > 0
        thousands  = english_number write
    numString = numString + thousands + ' decillion'

    if left > 0

      numString = numString + ' '
    end
  end

  write = left/1000000000000000000000000000000
  left = left - write*1000000000000000000000000000000

  if write > 0
        thousands  = english_number write
    numString = numString + thousands + ' nonillion'

    if left > 0

      numString = numString + ' '
    end
  end

  write = left/1000000000000000000000000000
  left = left - write*1000000000000000000000000000

  if write > 0
        thousands  = english_number write
    numString = numString + thousands + ' octillion'

    if left > 0

      numString = numString + ' '
    end
  end

  write = left/1000000000000000000000000
  left = left - write*1000000000000000000000000

  if write > 0
        thousands  = english_number write
    numString = numString + thousands + ' septillion'

    if left > 0

      numString = numString + ' '
    end
  end

  write = left/1000000000000000000000
  left = left - write*1000000000000000000000

  if write > 0
        thousands  = english_number write
    numString = numString + thousands + ' sextillion'

    if left > 0

      numString = numString + ' '
    end
  end

  write = left/1000000000000000000
  left = left - write*1000000000000000000

  if write > 0
        thousands  = english_number write
    numString = numString + thousands + ' quintillion'

    if left > 0

      numString = numString + ' '
    end
  end

  write = left/1000000000000000
  left = left - write*1000000000000000

  if write > 0
        thousands  = english_number write
    numString = numString + thousands + ' quadrillion'

    if left > 0

      numString = numString + ' '
    end
  end

  write = left/1000000000000
  left = left - write*1000000000000

  if write > 0
        thousands  = english_number write
    numString = numString + thousands + ' trillion'

    if left > 0

      numString = numString + ' '
    end
  end

  write = left/1000000000
  left = left - write*1000000000

  if write > 0
        thousands  = english_number write
    numString = numString + thousands + ' billion'

    if left > 0

      numString = numString + ' '
    end
  end

  write = left/1000000
  left = left - write*1000000

  if write > 0
        thousands  = english_number write
    numString = numString + thousands + ' million'

    if left > 0

      numString = numString + ' '
    end
  end

  write = left/1000
  left = left - write*1000

  if write > 0
        thousands  = english_number write
    numString = numString + thousands + ' thousand'

    if left > 0

      numString = numString + ' '
    end
  end

  write = left/100
  left  = left - write*100

  if write > 0
        hundreds  = english_number write
    numString = numString + hundreds + ' hundred'

    if left > 0

      numString = numString + ' '
    end
  end

  write = left/10
  left  = left - write*10

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
  left  = 0

  if write > 0
    numString = numString + onesPlace[write-1]
  end

  numString
end

=begin
puts english_number(  0)
puts english_number(  9)
puts english_number( 10)
puts english_number( 88)
puts english_number(100)
puts english_number(101)
puts english_number(234)
puts english_number(3211)
puts english_number(9999)
puts english_number(8134)
puts english_number(999999)
puts english_number(1000000000000)
puts english_number(1000000000000000)
puts english_number(109238745102938560129834709285360238475982374561034)
=end
