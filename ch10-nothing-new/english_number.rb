def english_number number
  # your code here
  if number < 0
    return "Please enter a number equal to zero or greater"
  end

  num_string = ''

  ones_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  tens_place = ['ten', 'twenty', 'thirty', 'fourty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
  large_numbers = [['hundred', 2], ['thousand',3], ['million', 6], ['billion',9], ['trillion',12], ['quadrillion',15], ['quintillion', 18]]

  left = number

  while large_numbers.length > 0
    large_pair = large_numbers.pop
    base = 10 ** large_pair[1]
    word = large_pair[0]

    write = left/base
    left = left - write*base

    if write > 0
      prefix = english_number write
      num_string = num_string + prefix + ' ' + word
      if left > 0
        num_string = num_string + ' '
      end
    end
  end

  write = left/10
  left = left - write*10

  if write > 0
    if write == 1 && left > 0
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
