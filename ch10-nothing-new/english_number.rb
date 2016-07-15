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

  big_num_arr = [['hundred', 2],
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

left = number # initial count

# New solution
while big_num_arr.length > 0
  curr_big_pair = big_num_arr.pop
  big_name = curr_big_pair[0]
  big_num = 10 ** curr_big_pair[1]
  write = left/big_num
  left = left - write*big_num

  if write > 0
    number = english_number write
    num_string = num_string + number + " #{big_name}"

    if left > 0
      num_string = num_string + ' '
    end
  end
end

 # Tens & Teenagers
  write = left/10
  left = left - write*10

  if write > 0
    if((write == 1) and (left > 0))
      num_string = num_string + teenagers[left-1]
      left = 0
    else
      num_string = num_string + tens_place[write-1]
    end

    if left > 0
      num_string = num_string + '-'
    end
  end
 # Ones
  write = left
  left = 0

  if write > 0
    num_string = num_string + ones_place[write-1]
  end

  num_string

end


puts english_number(109238745102938560129834709285360238475982374561034)
