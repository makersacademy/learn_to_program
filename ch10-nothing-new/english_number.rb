def english_number number
  if number < 0
    return 'Please enter a number that isn\'t a negative.'
  end
  if number == 0
    return 'zero'
  end

  num_string = '' # this is the string that we will return

  ones_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  tens_place = ['ten', 'twenty', 'thirty', 'fourty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
  zillions = [['hundred', 2], ['thousand', 3], ['million', 6], ['billion', 9], ['trillion', 12]]
  # zillion[1] - number of zeros


  # left - the remainder for the number left to write out
  # write - the part being written out now

  left = number

  while zillions.length > 0
    zil_pair = zillions.pop
    zil_name = zil_pair[0]
    zil_base = 10 ** zil_pair[1]
    write = left/zil_base
    left = left - write*zil_base

    if write > 0
      # recursion used below
      prefix = english_number write
      num_string = num_string + prefix + ' ' + zil_name

      if left > 0
        num_string += ' '
      end

    end

  end


  write = left/10   # calcs nuber of tens left
  left = left - write*10  # subtract those tens

  if write > 0
    # exception cases for the teens as you can't write tenty-two for twelve
    if ((write == 1) && (left > 0))
      num_string += teenagers[left-1]
      # -1 is because teenagers[3] is fourteen not thirteen
      left = 0
    else
      num_string += tens_place[write-1]
      # -1 is there as tens_place[3] is fourty not thirty
    end

    if left > 0
      # to add dash between tens and ones_place
      num_string += '-'
    end
  end

  write = left # how many ones left to write out?
  left = 0 # subtract off those ones

  if write > 0
    num_string += ones_place[write-1]
    # -1 is there because ones_place[3] is four not three
  end

  # time to return num_string
  num_string
end

# puts english_number(0)
# puts english_number(200)
# puts english_number(1001)
# puts english_number(17000)

# whole solution required - had no idea where to start with this one
