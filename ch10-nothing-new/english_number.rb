def english_number number
  return "Please enter a postiive number!" if number < 0
  return "zero" if number == 0
  
  num_string = ""

  ones_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  tens_place = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  teenagers  = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
  others = [['hundred', 2], 
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

  while others.length > 0
    other_pair = others.pop
    other_name = other_pair[0]
    other_base = 10 ** other_pair[1]
    write = left/other_base
    left = left - write * other_base

    if write > 0
      prefix = english_number write
      num_string = num_string + prefix + ' ' + other_name

      if left > 0
        num_string = num_string + ' '
      end
    end
  end

  write = left/10
  left = left - write * 10

  if write > 0
    if((write == 1) && (left > 0))
      num_string = num_string + teenagers[left - 1]
      left = 0
    else
      num_string = num_string +tens_place[write - 1]
    end

    if left > 0
      num_string = num_string + '-'
    end
  end

  write = left
  left = 0

  if write > 0
    num_string = num_string + ones_place[write - 1]
  end

  num_string
end

puts english_number(2983857934859)





