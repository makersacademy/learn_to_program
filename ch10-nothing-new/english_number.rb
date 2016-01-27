def english_number number
  if number < 0
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end


  num_string = ''
  ones_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  tens_place = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
  bigguns = [[' hundred', 2], [' thousand', 3], [' million', 6], [' billion', 9], [' trillion', 12], [' quadrillion', 15], [' quintillion', 18], [' sextillion', 21], [' septillion', 24], [' octillion', 27], [' nonillion', 30], [' decillion', 33], [' undecillion', 36], [' duodecillion', 39], [' tredecillion', 42], [' quattuordecillion', 45], [' quindecillion', 48]]

  left = number

  while bigguns.length != 0
    pair = bigguns.pop        #Had to steal some of this from the solution.
    big_name = pair[0]
    big_size = 10 ** pair[1]

  write = left/big_size
  left = left - write*big_size

  if write > 0
      num_this_time = english_number write
      num_string = num_string + num_this_time + big_name
    if left > 0
      num_string = num_string + ' '
    end
  end

  end

  write = left/10
  left = left - write*10

  if write > 0
    if ((write == 1) and (left > 0))
      num_string = num_string + teenagers[left-1]
      left = 0
    else
      num_string = num_string + tens_place[write-1]
    end

    if left > 0
      num_string = num_string + '-'
    end
  end

  write = left
  left = 0

  if write > 0
    num_string = num_string + ones_place[write-1]
  end

  num_string
end



=begin
puts english_number( 0)
puts english_number( 9)
puts english_number( 10)
puts english_number( 11)
puts english_number( 17)
puts english_number( 32)
puts english_number( 88)
puts english_number( 99)
puts english_number(100)
puts english_number(101)
puts english_number(234)
puts english_number(3211)
puts english_number(999999)
puts english_number(1000000)
puts english_number(1999999)
puts english_number(2000000)
puts english_number(3000000)
puts english_number(1000000000000000000-1)
=end
