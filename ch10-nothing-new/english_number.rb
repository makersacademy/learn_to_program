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
  teens = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
  big_numbers = ['thousand', 'million', 'billion', 'trillion', 'quadrillion', 'quintillion', 'sextillion', 'septillion', 'octillion', 'nonillion', 'decillion', 'undecillion', 'duodecillion', 'tredecillion', 'quattuordecillion', 'quindecillion']

  count = 16
  left = number
  while count > 0
    write = left/(1000 ** count)
    left -= write*(1000 ** count)
    if write > 0
      bignumber = english_number write
      num_string = num_string + bignumber + ' ' + big_numbers[count-1]
      if left > 0
        num_string = num_string + ' '
      end
    end
    count -= 1
  end

  write = left/100
  left -= write*100

  if write > 0
    #don't need to run english_number again because now that we're using thousands, only need 1 - 9 in front of the hundred.
    num_string = num_string + ones_place[write-1] + ' hundred'
    if left > 0
      num_string = num_string +' '
    end
  end

  write = left/10
  left = left - write*10

  if write > 0
    if ((write == 1) and (left > 0))
      num_string = num_string + teens[left-1]
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

