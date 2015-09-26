def english_number(number)
  if number < 0
    return 'Please enter a number that isn\'t negative'
  end
  if number == 0
    return 'zero'
  end

  num_string = ''

  ones = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  teens = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
  tens = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  big_numbers =   [['hundred', 2],
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

  while big_numbers.length > 0
    big_no = big_numbers.pop
    big_name = big_no[0]
    big_no_base = 10 ** big_no[1]
    write = left / big_no_base
    left = left - write * big_no_base

    if write > 0
      big_write = english_number write
      num_string = num_string + big_write + ' ' + big_name
      if left > 0
        num_string = num_string + ' '
      end
    end
  end

  write = left / 10
  left = left - write * 10

  if write > 0
    if ((write == 1) && (left > 0))
      num_string = num_string + teens[left - 1]
      left = 0
    else
      num_string = num_string + tens[write - 1]
    end

    if left > 0
      num_string = num_string + '-'
    end
  end

  write = left
  left = 0

  if write > 0
    num_string = num_string + ones[write - 1]
  end

  num_string

end

